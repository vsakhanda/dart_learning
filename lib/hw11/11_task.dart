import 'dart:async';

Future<void> main() async {
  print("**Start of the program **");
  print("Task 1: Асинхронне отримання імені");
  final name = await fetchName();
  print("Мене звати $name\n");

  print("Task 2: Асинхронне отримання вікуі");
  final ageStr = await fetchAge();
  final age = int.parse(ageStr);
  print("Мені $age ${ageSuffix(age)}\n");

  print("Task 3: Послідовне виконання:");
  await runSequential();

  print("Task 4: Паралельне виконання Future (Future.wait)");
  await runParallel();

  print("Task 5: Зворотний відлік з затримкою");
  final result = await delayedCountdown(3);
  print(result);

  print("Part 2: Streams");
  print("Task 6: Стрім з чисел (fromIterable)");
  // await streamFromIterableDemo();

  print("Task 7: Зворотний відлік зі стріму (periodic)");
  streamCountdown();

  print("Task 8: Робота з StreamController");
  streamControllerDemo();

  print('** end of the program**');
}

// Task 1: Асинхронне отримання імені

Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return "Владислав";
}

// Task 2: Асинхронне отримання віку
Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return "21";
}

String ageSuffix(int age) {
  if (age % 10 == 1 && age % 100 != 11) return "рік";
  if ([2, 3, 4].contains(age % 10) && !(age % 100 >= 12 && age % 100 <= 14))
    return "роки";
  return "років";
}

// Task 3: Послідовне виконання Future
Future<void> runSequential() async {
  final stopwatch = Stopwatch()..start();

  final name = await fetchName();
  print("Мене звати $name");

  final ageStr = await fetchAge();
  final age = int.parse(ageStr);
  print("Мені $age ${ageSuffix(age)}");

  stopwatch.stop();
  print("Час послідовного виконання: ${stopwatch.elapsedMilliseconds} мс\n");
}

// Task 4: Паралельне виконання Future (Future.wait)
Future<void> runParallel() async {
  final stopwatch = Stopwatch()..start();

  final results = await Future.wait([fetchName(), fetchAge()]);

  final name = results[0];
  final age = int.parse(results[1]);

  print("Мене звати $name");
  print("Мені $age ${ageSuffix(age)}");

  stopwatch.stop();
  print("Час паралельного виконання: ${stopwatch.elapsedMilliseconds} мс\n");
}

// Task 5: Зворотний відлік з затримкою
Future<String> delayedCountdown(int seconds) async {
  for (int i = seconds; i > 0; i--) {
    print("$i...");
    await Future.delayed(Duration(seconds: 1));
  }
  return "Старт!";
}

// Task 6: Стрім з чисел (fromIterable)
Future<void> streamFromIterableDemo() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  print("await for:");
  await for (var value in stream) {
    print(value);
  }

  final stream2 = Stream.fromIterable([1, 2, 3, 4, 5]);
  print("\nlisten:");
  stream2.listen((value) => print(value));
}

// Task 7: Зворотний відлік зі стріму (periodic)
Future<void> streamCountdown() async {
  final countdown = Stream.periodic(
    Duration(seconds: 1),
    (count) => count + 1,
  ).take(10);

  await for (final second in countdown) {
    print("$second...");
  }
}

// Task 8: Робота з StreamController
void streamControllerDemo() {
  final controller = StreamController<String>();

  controller.stream.listen(
    (value) => print(value),
    onDone: () => print("Стрім завершено"),
  );

  controller.add("Hello");
  controller.add("World");
  controller.add("Dart");
  controller.close();
}
