import 'dart:io';

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
  
  // Menggunakan map() untuk menghitung kuadrat setiap angka
  List<int> squaredNumbers = numbers.map((num) => num * num).toList();
  
  print("List awal: $numbers");
  print("List setelah dikuadratkan: $squaredNumbers");
}
