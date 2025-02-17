const oneSecond = Duration(seconds: 1);

// the syntax is very different from JavaScript and to handle stream too...
// the "async*" is to handle streams. I will see this in future. It's a promise.


Future<void> printWithDelay(String message) async {
  // there is the "then" method too.
  await Future.delayed(oneSecond);
  print(message);
}