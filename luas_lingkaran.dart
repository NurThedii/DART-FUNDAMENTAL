import 'dart:io';

void main() {
  // Fungsi anonim untuk menghitung luas lingkaran
  var hitungLuasLingkaran = (double r) => 3.14 * r * r;

  // Meminta pengguna untuk memasukkan jari-jari lingkaran
  stdout.write("Masukkan jari-jari lingkaran: ");
  String? input = stdin.readLineSync();

  if (input != null && double.tryParse(input) != null) {
    double jariJari = double.parse(input);
    double luas = hitungLuasLingkaran(jariJari);

    print("Luas lingkaran dengan jari-jari $jariJari adalah $luas");
  } else {
    print("Input tidak valid. Harap masukkan angka.");
  }
}
