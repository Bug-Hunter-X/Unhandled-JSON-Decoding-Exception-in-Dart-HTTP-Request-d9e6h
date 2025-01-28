# Unhandled JSON Decoding Exception in Dart HTTP Request

This repository demonstrates a common error in Dart code that involves handling HTTP requests and JSON decoding. The original code lacks robust error handling for JSON decoding and HTTP status codes. The improved solution addresses these issues by providing more specific exception handling.

## Bug
The `bug.dart` file contains Dart code that makes an HTTP request. The code includes a `try-catch` block, but it doesn't handle the `FormatException` that can occur if the JSON response is improperly formatted.  Furthermore, the success condition only checks for a status code of 200, ignoring other potential errors.