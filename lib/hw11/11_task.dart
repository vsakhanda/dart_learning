import 'dart:async';

Future<void> main() async {
  print("**Start of the program **");
  print("Task 1: Асинхронне отримання імені");
  final name = await fetchName();
  print("Мене звати $name\n" );

  print("Task 2: Асинхронне отримання вікуі");
  final ageStr = await fetchAge();
  final age = int.parse(ageStr);
  print("Мені $age ${ageSuffix(age)}\n");

  print("Task 3: Послідовне виконання:");
  await runSequential();

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
