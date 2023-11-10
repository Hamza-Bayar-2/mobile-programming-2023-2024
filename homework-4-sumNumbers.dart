import 'dart:io';

Future<void> main() async {
  double num1, num2;

  print("1.sayıyı giriniz => ");
  num1 = takeNumber();
  print("2.sayıyı giriniz => ");
  num2 = takeNumber();
  
  double sum = await sumNumbers(num1, num2);
  print("\nSonuç: $num1 + $num2 = $sum");
}

Future<double> sumNumbers(double num1, double num2) async {

  print("\nHesaplanıyor...");
  await Future.delayed(Duration(seconds: 3));
  return (num1 + num2);
}

double takeNumber(){
  return double.parse(stdin.readLineSync()!); 
}