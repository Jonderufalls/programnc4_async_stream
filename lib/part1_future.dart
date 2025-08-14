// File: part1_future.dart
Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Got it! Your name is Seryo.';
  });
}

void showMessage() async {
  print('Getting your name... please wait.');
  String message = await getNameLater();
  print(message);
}

void main() {
  showMessage();
  print('Doing other stuff while waiting...');
}
