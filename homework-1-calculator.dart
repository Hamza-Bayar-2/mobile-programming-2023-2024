import 'dart:io';

void main() {
  hesapMakinesi();
}

void hesapMakinesi(){
  int? secim;
  int asilSecim;

  while(true){
    print("\n\nİşlem tipini seçiniz:\n");
    print("1- Toplama\n2- Çıkarma\n3- Çarpma\n4- Bölme\n0- Çık");
    stdout.write("\n=> ");
    secim = int.tryParse(stdin.readLineSync()!);

    if(secim != null){
      asilSecim = secim;
    }
    else{
      asilSecim = -1;
    }

    if(asilSecim == 1){
      sayiAlma();
      toplama(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 2){

      sayiAlma();
      cikarma(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 3){
      sayiAlma();
      carpma(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 4){
      sayiAlma();
      bolme(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 0){
      break;
    }
    else{
      print("\nGeçersiz girdi. Lütfen tekrar deneyiniz.");
    }

    numberList.clear();
  }
}

List<double> numberList = [];
var numberTest;

void sayiAlma(){
  for(int i = 1; i <= 2; i++){
    stdout.write("$i - bir sayı gir => ");
    numberTest = double.tryParse(stdin.readLineSync()!);

    if(numberTest == null){
      i--;
      print("Tekrar dene!!");
      continue;
    }

    numberList.add(numberTest);
  }
}

void toplama({required double number1, required double number2}){
  print("\nSonuç:");
  print("$number1 + $number2 = ${number1 + number2}");
} 
void cikarma({required double number1, required double number2}){
  print("\nSonuç:");
  print("$number1 - $number2 = ${number1 - number2}");
}
void carpma({required double number1, required double number2}){
  print("\nSonuç:");
  print("$number1 * $number2 = ${number1 * number2}");
}
void bolme({required double number1, required double number2}){
  print("\nSonuç:");
  print("$number1 / $number2 = ${number1 / number2}");
}