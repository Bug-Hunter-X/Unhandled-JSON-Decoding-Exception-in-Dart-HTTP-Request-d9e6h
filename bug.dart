```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! 
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print(jsonData['key']); // Example: Accessing a specific value
    } else {
      // Handle errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    //Consider rethrowing exception to notify upper layers
    rethrow; 
  }
}
```