// File: part2_future_error.dart
Future<String> fetchData() {
  bool hasInternet = false;

  return Future.delayed(Duration(seconds: 2), () {
    if (hasInternet) {
      return 'Data retrieved successfully from the server.';
    } else {
      throw Exception('No internet connection.');
    }
  });
}

void getSafeMessage() async {
  try {
    String message = await fetchData();
    print('Data received: $message');
  } catch (e) {
    print('Error occurred: $e');
  }
}

void main() {
  getSafeMessage();
  print('Program continues to run.');
}
