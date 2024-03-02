import 'dart:io';
import 'dart:math';

void main() {
  print("Shorouk ELSayed Hassan ");
  print("Hello, I am John Doe. ");
  const int = 7;
  print('Enter a number:');
  num number = num.parse(stdin.readLineSync()!);
  print(pow(number, 2));
  String y = "my name is Shorouk";
  print(y.replaceAll(' ', ''));
  print('Enter a number');
  num z = num.parse(stdin.readLineSync()!);
  if (z % 2 == 0)
    print("The number is even");
  else
    print("The number is odd ");
  var d = 25, s = 40;
  double t = (d / s) * 60;
  print("The time in minutes is :$t m");
}
