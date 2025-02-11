```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Safely access the key using containsKey
      if (jsonData.containsKey('key')) {
        final value = jsonData['key'];
        print(value);
      } else {
        print('Key not found in JSON');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```