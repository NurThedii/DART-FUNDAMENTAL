import 'dart:io';

void main() {
  List<String> names = [];
  print('### Program Nama Anda ###');
  print('Masukan Nama ("Ketik selesai jika berhenti")');
  while (true) {
    stdout.write('Nama:');
    String? input = stdin.readLineSync();
    if (input == null || input.toLowerCase() == 'selesai') {
      break;
    }
    names.add(input);
  }
  print('\n### Daftar Nama Anda');
  if (names.isEmpty) {
    print('Belum ada nama yang dimasukan');
  } else {
    for (int i = 0; i < names.length; i++) {
      print("${i + 1}.${names[i]}");
    }
  }
  print('\nApakah Anda ingin mencari nama di daftar?(y/n):');
  String? searchOption = stdin.readLineSync();
  if (searchOption != null && searchOption.toLowerCase() == 'y') {
    stdout.write('Masukan Nama anda yang ingin dicari ');
    String? searchName = stdin.readLineSync();
    if (searchName != null && names.contains(searchName)) {
      print("Nama'$searchName' ditemukan di daftar");
    } else {
      print("Nama'$searchName'  tidak ditemukan di daftar");
    }
  }
  print('\nProgram Selesai');
}
