void main() {
  print("feat(DART-06): initial commit");
  print("second raw");
  print("*********************");
  firstTask();
}

void firstTask() {
   print("**Task one**");
  double length = 18.4;
  double heigth = 30.9;

  var area = length * heigth;
  var perimeter = 2 * (length + heigth);

  print(
    "If lenght is $length milimeters and height is $heigth milimeters. \n Area of the rectangle will be equel to $area.  \nPerimeter of the rectangle wiil be $perimeter",
  );

  var proximateSqure = area ~/ 1;
  print("*********************");
  print("Approximate area of the rectangle is $proximateSqure ");
}
