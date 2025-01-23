import 'dart:io';
void main() {
  stdout.write('Masukan nama anda:');
  String? name = stdin.readLineSync();
  print('Halo:$name!');
}
