void main() {
  print("feat(DART-06): initial commit");
  print("second raw");
  print("*********************");
  firstTask();
  secondTask();
}

void firstTask() {
  print("**Task one: Mathematical operators**");
  double length = 18.4;
  double heigth = 30.9;

  var area = length * heigth;
  var perimeter = 2 * (length + heigth);

  print(
    "If lenght is $length milimeters and height is $heigth milimeters. \n Area of the rectangle will be equel to $area.  \nPerimeter of the rectangle wiil be $perimeter",
  );

  var proximateSqure = area ~/ 1;

  print("Approximate area of the rectangle is $proximateSqure ");
  print("*********************");
}

void secondTask() {
  print("**Task two: Comparison operators**");

  double number = 32;
  var cash = 50;
  var deposit = 100;
  double divisor = 8;

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
  print("*********************");
}
