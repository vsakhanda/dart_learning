import 'dart:async';

Future<void> main() async {
  print("**Start of the program **");
  final name = await fetchName();
  print("Мене звати $name");
  print('** end of the program**');
}

// Task 1: Асинхронне отримання імені

Future<String> fetchName() async {
  print("**Start of the method **");
  await Future.delayed(Duration(seconds: 2));
  return "Владислав";
}


// Task 2: Асинхронне отримання віку