import 'dart:async';

void main() async {
  // C a l l i n g    F u n c t i o n
  print('-------------------------------------------');
  try {
    var user = await fetchUserData();
    print(user);
  } catch (error) {
    print(error);
  }
  // M u l t i p l e    F u n c t i o n
    print('-------------------------------------------');
  try {
    List<String> results = await Future.wait([userHistory(), userInfo()]);
    print('Parallel Results: $results');
  } catch (e) {
    print('Parallel error: $e');
  }

  // S t r e a m
    print('-------------------------------------------');
  try {
    await for (int value in counterStream()) {
      print("Counter: $value");
    }
  } catch (e) {
    print("Stream error: $e");
  }

  // M a n u a l    S t r e a m    C o n t r o l e r
    print('-------------------------------------------');
  StreamController controller = StreamController();
  controller.stream
      .map((event) => event * 2)
      .listen(
        (event) => print('Transformed data   $event'),
        onError: (error) => print('Error   $error'),
        onDone: () => print('Stream done'),
      );
  controller.add(1);
  controller.add(17);
  controller.add(15);
  controller.add(21);
  controller.close();
}

// All Future Functions
Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 3));
  return 'User data loaded';
}

Future<String> userHistory() async {
  await Future.delayed(Duration(seconds: 3));
  return 'User History';
}

Future<String> userInfo() async {
  await Future.delayed(Duration(seconds: 3));
  return 'User Information';
}

// Stream
Stream<int> counterStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    if (i == 4) throw Exception("Counter error");
    yield i;
  }
}
