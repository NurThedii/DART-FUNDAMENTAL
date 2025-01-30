import 'dart:io';

void main() {
  // Fungsi anonim untuk menghitung kuadrat dari suatu angka
  var kuadrat = (num x) => x * x;

  // Meminta input dari pengguna
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();

  // Validasi input agar hanya menerima angka
  if (input != null && num.tryParse(input) != null) {
    num angka = num.parse(input);
    num hasil = kuadrat(angka);

    print("Angka asli: $angka");
    print("Hasil kuadrat: $hasil");
  } else {
    print("Input tidak valid. Harap masukkan angka.");
  }
}
