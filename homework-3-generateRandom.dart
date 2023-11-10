import 'dart:math';

int? generateRandom() {
  final random = Random();
  int randomNumber = random.nextInt(2);

  return randomNumber == 0 ? null : 100;
}

void main() {
  int? status = generateRandom();

  if (status == null) {
    status = 0; 
  }

  print('Status: $status');
}
