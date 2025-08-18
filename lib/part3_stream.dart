Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void countToNumbers() {
  numberStream().listen((num) {
    print('New: $num');
  });
}

void main() {
  countToNumbers();
  print('count to numbers...');
}
