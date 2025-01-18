```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      final jsonData = json.decode(response.body);
      print(jsonData);
    } else {
      // Handle errors appropriately.  Throwing an exception is one option.
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, maybe re-throw or log
    print('Error: $e');
    // Do not re-throw here if you want to prevent the app from crashing
    // rethrow;
  }
}
```