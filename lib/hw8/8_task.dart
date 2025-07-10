import 'dart:math';

import 'names_hw8.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  print('Homework for lesson 8');
  print('***************');

  //  list();
  //  set();
  map();
}

void list() {
  print("**Task 1 List**");
  // Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100 (використайте Random().nextInt(101)).
  final list = List.generate(100, (index) => Random().nextInt(101));
  // Виведіть цей список на екран.
  print('Виведення списку на екран $list');
  int element = list[65];

  // Виведіть на екран 65-й елемент списку у форматі: "65-й елемент: [значення]".
  print('Виведення списку на екран елемента 65 =  $element');

  // Вставте число 1000000000 на 50-ту позицію списку.
  list.insert(50, 1000000);
  print('Вставте число 1000000000 на 50-ту позицію списку $list');

  print('Виведення списку на екран елемента 65 =  $element');

  // Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
  list.removeWhere(
    (value) => value == 24 || value == 45 || value == 66 || value == 88,
  );
  ;
  print('Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88. $list');

  print(list.length);

  int total = 0;

  // За допомогою циклу for переберіть список. Під час перебору:
  // Порахуйте суму всіх елементів, що діляться на 3 без залишку.
  for (int number in list) {
    if (number % 3 == 0) {
      total += number;
    }
    //print('Сума числе: до $number and $total');
  }
  list.sort();
  // Виведіть результат.
  print('Загальна сума чисел $total');

  // Створіть порожній список temp. За допомогою циклу for-in переберіть numbers. Додайте до temp лише ті елементи, що діляться на 2 без залишку.
  List<int> temp = [];

  for (var number in list) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  // Виведіть довжину списку temp.
  print(temp);

  print("*********************");
}

void set() {
  print("**Task 2 Set**");
  print("**List 1. uniqueNames1**");
  final uniqueNames1 = Set.from(ukrainianNames1);
  print(uniqueNames1);
  print(uniqueNames1.length);
  print("**List 2. uniqueNames2**");
  final uniqueNames2 = Set.from(ukrainianNames2);
  print(uniqueNames2);
  print(uniqueNames2.length);

  //Створіть новий Set зі спільними іменами обох списків. Виведіть кількість елементів у цій множині.
  print("**United list. unionSet**");
  final unionSet = uniqueNames1.union(uniqueNames2);
  print(unionSet);
  print("Довжина об'єднаного сету");
  print(unionSet.length);

  // Створіть множину з іменами, що є в uniqueNames1, але яких немає в uniqueNames2. Виведіть ці імена.
  print("**Difference 1 vs 2 list**");
  final diffNames1vsNames2 = uniqueNames1.difference(uniqueNames2);
  print('$diffNames1vsNames2');
  ;

  // Створіть множину з іменами, що є в uniqueNames2, але яких немає в uniqueNames1. Виведіть ці імена.
  print("**Difference 2 vs 1 list**");
  final diffNames2vsNames1 = uniqueNames2.difference(uniqueNames1);
  print(' $diffNames2vsNames1');
  ;

  print("*********************");
}

void map() {
  
  print("50 випадкових слів");
  final wordGenerator = WordGenerator();
  List<String> nounsList = wordGenerator.randomNouns(50);
  print(nounsList);
  print(nounsList.length);

  print("Мапа ключ - довжина слова");
  Map<String, int> nounsMap =  {
     for (var word in nounsList) word: word.length
  };
  print(nounsMap);

  print("Всі ключі зі tempNouns");
  Map<String, int> tempNouns = { 
    for (var entry in nounsMap.entries)
      if (entry.key.length % 2 == 0) entry.key: entry.value
  };
  print(tempNouns.keys.toList());


  print("Варіант 2 через цикл for - Всі ключі зі tempNouns");
  Map<String, int> tempNouns2 = {};

  for (var entry in nounsMap.entries) {
    if (entry.key.length % 2 == 0) {
      tempNouns2[entry.key] = entry.value;
    }
  }
  print(tempNouns2.keys.toList()); 

}