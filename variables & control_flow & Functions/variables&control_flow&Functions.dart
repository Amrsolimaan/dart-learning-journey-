//Use String method (Contains() , replaceAll())
import 'dart:io';
import 'dart:math';

void main() {
  List<String> data_type = [
    "int",
    "String",
    "var",
    "dynamic",
    "const",
    "final",
    "List",
    "sits",
    "Maps",
  ];
  int coutner =0;

  // ****************************
  // if condition && for loop

  for (int i = 0; i < 3; i++) {
    int randomindex = Random().nextInt(data_type.length);
    if (data_type[randomindex] == "int") {
      coutner += 1 ;
      print("value of Variable is :  $coutner");
    }
  }
  if (coutner == 0) {
    print("value of Variable is : null");
  }
  // from string to INT
  String age = "23";
  print('Yor birth day in ${(2025 - int.parse(age)).toString()} year ');

  //  swap function & conditional  operator
  int x = 4, y = 6;
  x > y ? print(x) : swap(x, y);

  // *******************************

  //call named function
  info(age: 23, name: "amr");

  //call positional function
  display("0104894668");
  display("0104894668", 15400);

  //Arow function
  print(" The result :  ${result(55, 77)}");
}

void swap(int x, int y) {
  x = x ^ y;
  y = x ^ y;
  x = x ^ y;
  print('x :  $x  ,  y : $y ');
}

//named function :
void info({String? name, int? age}) {
  print("The name is : $name , age is : $age");
}
// Positional function
void display(String? phone, [int? salary]) {
  salary != null
      ? print("The name is : $phone , age is : $salary")
      : print("The name is : $phone ");
}

int result(int? number1, int? number2) => (number1 ?? 0) + (number2 ?? 0);
