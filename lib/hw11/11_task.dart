import 'dart:async';

Future<void> main() async {
  print("**Start of the program **");
  final name = await fetchName();
  print("Мене звати $name");

  final ageStr = await fetchAge();
  final age = int.parse(ageStr);
  print("Мені $age ${ageSuffix(age)}\n");

  print('** end of the program**');
}

// Task 1: Асинхронне отримання імені

Future<String> fetchName() async {
  print("**Start of the task 1 **");
  await Future.delayed(Duration(seconds: 2));
  return "Владислав";
}

// Task 2: Асинхронне отримання віку
Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return "21";
}
String ageSuffix(int age) {
  print("**Start of the task 2 **");
  if (age % 10 == 1 && age % 100 != 11) return "рік";
  if ([2, 3, 4].contains(age % 10) && !(age % 100 >= 12 && age % 100 <= 14))
    return "роки";
  return "років";
}
