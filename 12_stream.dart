import 'dart:async';

void main() {
  // final controller = StreamController();
  // final stream = controller.stream;

  // final streamListener1 = stream.where((val) => val % 2 == 0).listen((val) {
  //   print('Listener 1 : $val');
  // });

  // final streamListener2 = stream.where((val) => val % 2 == 1).listen((val) {
  //   print('Listener 2 : $val');
  // });

  // controller.sink.add(1);
  // controller.sink.add(2);
  // controller.sink.add(3);
  // controller.sink.add(4);
  // controller.sink.add(5);

  // calculate(2).listen((val) {
  //   print('calculate(2) : $val');
  // });

  // calculate(4).listen((val) {
  //   print('calculate(4) : $val');
  // });

  playAllStream().listen((val) {
    print(val);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1);
  yield* calculate(1000);
}

// 함수형 stream
Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}
