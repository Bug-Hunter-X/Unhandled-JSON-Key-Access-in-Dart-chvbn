```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON string
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key in jsonData
      final value = jsonData['nonExistentKey']; 
      print(value);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // In a production app, you would likely want to handle this error more gracefully,
    // perhaps by showing an error message to the user.
  }
}
```