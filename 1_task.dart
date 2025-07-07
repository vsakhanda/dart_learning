void main() {
  print("feat(DART-06): initial commit");
  print("second raw");
  print("*********************");
  firstTask();
  secondTask();
  thirdTask();
  fourthTask();
  fifthTask();
  sixthTask();
  seventhTask();
  eighthTask();
  ninthTask();
  tenthTask();
}

void firstTask() {
  print('**Task one: Mathematical operators**');
  final double length = 18.4;
  final double heigth = 30.9;

  var area = length * heigth;
  var perimeter = 2 * (length + heigth);

  print(
    'If lenght is $length milimeters and height is $heigth milimeters. \n Area of the rectangle will be equel to $area.  \nPerimeter of the rectangle wiil be $perimeter',
  );

  var proximateSqure = area ~/ 1;

  print('Approximate area of the rectangle is $proximateSqure ');
  print('*********************');
}

void secondTask() {
  print('**Task two: Comparison operators**');

  final double number = 32;
  final cash = 50;
  final deposit = 100;
  final double divisor = 8;

  print('number == cash: ${number >= cash}');
  print('number == deposit: ${number <= deposit}');
  print('remainder number / $divisor: ${number % divisor == 0}');
  // TO DO analize functionality of deviding
  // double devide = ((number % divisor) - (number / divisor));
  // double div1 = (number % divisor);
  // double div2 = (number / divisor);
  // print('div 1 - $div1');
  // print('div 2 - $div2');

  // print('$devide');
  // print('number / $divisor: ${devide == 0}');
  print('*********************');
}

void thirdTask() {
  print('**Task three: Logical operators**');

  final bool hasMoney = true;
  final bool isOpen = false;

  final bool canIBuy = (hasMoney && isOpen);
  final bool shouldIWait = hasMoney && !isOpen;

  print(
    'Чи можна зробити покупку (якщо є гроші та магазин відкритий)? $canIBuy',
  );
  print(
    'Чи потрібно почекати (якщо магазин закритий абонемає грошей)? $shouldIWait',
  );

  print("*********************");
}

void fourthTask() {
  print('**Task four: Ternary Operators**');

  final temperature = 27;

  print('Сьогодні температура на вулиці $temperature градусів за цельсієм');
  // String mood ;
  if (temperature > 25) {
    print('Відчувається Тепло');
  } else {
    print('Відчувається Прохолодно');
  }
  ;

  var extremeTernary =
      (temperature < 10)
          ? 'Відчувається Дуже холодно'
          : 'Відчувається Прохолодно';
  print(extremeTernary);

  print("*********************");
}

void fifthTask() {
  print('**Task Five: Assignment Operators**');

  double score = 0;
  final double correctAnswers = 17;
  final double mistakes = 3;
  final double totalQuestions = 20;

  score += correctAnswers * 10;
  score -= mistakes * 5;
  score *= 2;
  score /= totalQuestions;

  print('Загальна оцінка $score');
  print('*********************');
}

void sixthTask() {
  print('**Task Six: IfElse Statements**');

  var examScore = 19;

  if (examScore >= 90) {
    print('Відмінно');
  } else if (examScore >= 75) {
    print('Добре');
  } else if (examScore >= 60) {
    print('Задовільно');
  } else if (examScore >= 20) {
    print('Не здано');
  } else {
    print('Повторний курс');
  }

  print('*********************');
}

void seventhTask() {
  print('**Task Seven: Switch  Statements**');

  var dayNumber = 7;

  switch (dayNumber) {
    case 1:
      print('понеділок');
    case 2:
      print('Вівторок');
    case 3:
      print('Середа');
    case 4:
      print('Четвер');
    case 5:
      print("П'ятниця");
    case 6:
      print('Субота. Вихідний день 🎉');
    case 7:
      print('Неділя. Вихідний день 🎉');
    default:
      print('Введений не вірний номер дня тижня');
  }

  print("*********************");
  }

void eighthTask() {
  print('**Task Eight: For loop**');

  int total = 0;

  for (int i = 1; i <= 10; i++) {
    print('Число: $i');
  }

  print('** Умова в циклі **');
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print('Число: $i що дільться на 2');
    } else {
      continue;
    }
  }

  print('** Умова в циклі з використанням continue **');
  for (int i = 1; i <= 10; i++) {
    if (i % 2 != 0) {
      continue;
    } else {
      print('Число: $i що дільться на 2');
    }
  }

  for (int i = 1; i <= 10; i++) {
    total = total + i;
    // print('Сума числе: до $i and $total');
  }
  print('Загальна сума чисел $total');
  print("*********************");
}

void ninthTask() {
  print('**Task Nine: while loop**');
  int counter = 10;
  while (counter >= 1) {
    if (counter % 2 == 0) {
      print('Парне число: $counter ділиться на 2');
    } else {
      print('Непарне число: $counter не ділиться на 2');
    }
    counter--;
  }
  print("*********************");
}

void tenthTask() {
  print('**Task ten: Break and Continue**');
  
    for (int i = 0; i < 20; i++) {
      if (i % 3 == 0) {
        continue;
      }
      if (i >= 15) {
        print('Занадто велике значення, вихід.');
        break;
      }
      print('Поточне значення: $i');
    }
    print("*********************");
    return;
}
