import 'dart:math';

void main() {

  print('Homework for lesson 8');
  print('***************');

   list();
}


void list() {
 print("**Task 1 List**");
// Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100 (використайте Random().nextInt(101)).
final list = List.generate(100, (index) => Random().nextInt(101));
// Виведіть цей список на екран.
  print('Виведення списку на екран $list');
  int element = list.elementAt(65);

// Виведіть на екран 65-й елемент списку у форматі: "65-й елемент: [значення]".
  print('Виведення списку на екран елемента 65 =  $element');

  // Вставте число 1000000000 на 50-ту позицію списку.
  list.insert(50, 1000000);
  print('Вставте число 1000000000 на 50-ту позицію списку $list');


  print('Виведення списку на екран елемента 65 =  $element');

  // Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
  list.removeWhere((value) => value == 24 || value == 45 || value == 66 || value == 88);;
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