import 'dart:async';

Future<void> main() async {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);

  List<int> modifiedList = await multiplyBy2Async(numbers);

  print("Modife edilmiş list: $modifiedList\n");
}

Future<List<int>> multiplyBy2Async(List<int> numbers) async {
  List<int> modifiedList = [];
  print("\nListe iki ile çarpılıyor...\n");
  
  for (int number in numbers) {
    await Future.delayed(Duration(milliseconds: 300)); 
    int modifiedNumber = await number * 2;
    modifiedList.add(modifiedNumber);
  }

  return modifiedList;
}

