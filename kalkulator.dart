import 'dart:io';

void main() {
  while (true) {
    print("\n==== Kalkulator Sederhana ====");
    print("1. Tambah");
    print("2. Kurang");
    print("3. Kali");
    print("4. Bagi");
    print("5. Keluar");

    stdout.write("Pilih operasi (1-5): ");
    int? pilihan = int.tryParse(stdin.readLineSync() ?? '');

    if (pilihan == null || pilihan < 1 || pilihan > 5) {
      print("Pilihan tidak valid. Coba lagi.");
      continue;
    }

    if (pilihan == 5) {
      print("Terima kasih telah menggunakan kalkulator!");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double? angka1 = double.tryParse(stdin.readLineSync() ?? '');
    if (angka1 == null) {
      print("Input tidak valid. Harap masukkan angka.");
      continue;
    }

    stdout.write("Masukkan angka kedua: ");
    double? angka2 = double.tryParse(stdin.readLineSync() ?? '');
    if (angka2 == null) {
      print("Input tidak valid. Harap masukkan angka.");
      continue;
    }

    double hasil;
    if (pilihan == 1) {
      hasil = angka1 + angka2;
      print("Hasil: $angka1 + $angka2 = $hasil");
    } else if (pilihan == 2) {
      hasil = angka1 - angka2;
      print("Hasil: $angka1 - $angka2 = $hasil");
    } else if (pilihan == 3) {
      hasil = angka1 * angka2;
      print("Hasil: $angka1 * $angka2 = $hasil");
    } else if (pilihan == 4) {
      if (angka2 == 0) {
        print("Kesalahan: Pembagian dengan nol tidak diperbolehkan.");
      } else {
        hasil = angka1 / angka2;
        print("Hasil: $angka1 / $angka2 = $hasil");
      }
    }

    // Menanyakan apakah ingin melanjutkan
    stdout.write("\nApakah Anda ingin melanjutkan? (y/n): ");
    String? lanjut = stdin.readLineSync();
    if (lanjut?.toLowerCase() == 'n') {
      print("Terima kasih telah menggunakan kalkulator!");
      break;
    }
  }
}
