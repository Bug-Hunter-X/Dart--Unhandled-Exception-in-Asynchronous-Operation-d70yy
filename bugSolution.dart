```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = json.decode(response.body);
        print(jsonData);
      } catch (jsonError) {
        print('Error decoding JSON: $jsonError');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode} ${response.reasonPhrase}');
    }
  } catch (e) {
    print('Error: $e');
    //Consider rethrowing exception based on needs
    //rethrow;
  }
}
```