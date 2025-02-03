import 'dart:io';

// Fungsi rekursif untuk menghitung faktorial
int faktorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * faktorial(n - 1);
}

void main() {
  List<int> numbers = [];
  
  print("Masukkan angka satu per satu (ketik 'selesai' untuk berhenti):");
  while (true) {
    String? input = stdin.readLineSync();
    if (input != null && input.toLowerCase() == 'selesai') {
      break;
    }
    int? number = int.tryParse(input ?? '');
    if (number != null) {
      numbers.add(number);
    } else {
      print("Masukkan angka yang valid.");
    }
  }
  
  print("List awal: $numbers");
  
  // Menghitung faktorial untuk setiap angka dalam list
  List<int> factorialNumbers = numbers.map((num) => faktorial(num)).toList();
  print("List faktorial: $factorialNumbers");
}