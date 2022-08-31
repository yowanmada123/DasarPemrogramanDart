import 'package:tugaspertama/tugaspertama.dart' as tugaspertama;
import 'dart:io';

void main(List<String> arguments) {
  bool again = true;
  do {
    print("By: Yowanda Frisky Amada - Politeknik Elektronika Negeri Surabaya");
    print("Pilih Aplikasi Yang Tersedia");
    print("----------------------------");
    print("Pilih Aplikasi : ");
    print("1. Kalkulator Sederhana");
    print("2. Penentu Bilangan Prima");
    print("3. Pencetak Bintang");
    String? option = stdin.readLineSync();
    switch (option) {
      case "1":
        kalkulator();
        break;
      case "2":
        bilanganPrima();
        break;
      case "3":
        pencetakPiramidBintang();
        break;
      default:
        print("Wrong Option !");
        break;
    }

    print("Ingin Coba program lain? (y/n) ");
    String? lagi = stdin.readLineSync();
    if (lagi != 'y') {
      again = false;
    }
  } while (again);
}

void pencetakPiramidBintang() {
  bool again = true;

  do {
    int i = 0, j = 0, k = 0;

    print("Input tinggi segitiga:");
    var number = stdin.readLineSync();
    var n = int.parse(number!);

    for (int i = 0; i < n; i++) {
      var stars = '';
      for (int j = (n - i); j > 1; j--) {
        stars += ' ';
      }
      for (int j = 0; j <= i; j++) {
        stars += '* ';
      }
      print(stars);
    }

    print("coba lagi? (y/n) ");
    String? lagi = stdin.readLineSync();
    if (lagi != 'y') {
      again = false;
    }
  } while (again);
}

void bilanganPrima() {
  bool again = true;
  bool isPrima = true;
  int n = 0;
  print("Selamat Datang di Pengecekan Bilangan Prima");
  print("--------------------------------------");
  do {
    print("Input bilangan : ");
    String? a = stdin.readLineSync();
    if (a != null) {
      n = int.parse(a);
    } else {
      print("Input bilangan dengan tepat!");
    }

    int x, y = 1, z, r = 0;
    for (y; y <= n; y++) {
      z = n % y;
      if (z == 0) r++;
    }
    if (r == 2)
      print("$n adalah bilangan prima\n");
    else
      print("$n bukan bilangan prima\n");

    print("coba lagi? (y/n) ");
    String? lagi = stdin.readLineSync();
    if (lagi != 'y') {
      again = false;
    }
  } while (again);
}

void kalkulator() {
  bool again = true;
  double hasil = 0;

  print("Selamat Datang di Kalkulator Sederhana");
  print("--------------------------------------");
  do {
    print("Input angka pertama : ");
    String? a = stdin.readLineSync();
    print("Pilih Jenis Operasi : (1/2/3/4/5)");
    print("1. + (Penjumlahan)");
    print("2. - (Pengurangan)");
    print("3. / (Pembagian)");
    print("4. x (Perkalian)");
    print("5. % (Modulus)");
    String? operatr = stdin.readLineSync();
    print("Input angka kedua : ");
    String? b = stdin.readLineSync();

    switch (operatr) {
      case "1":
        hasil = double.parse(a!) + double.parse(b!);
        operatr = '+';
        break;
      case "2":
        hasil = double.parse(a!) - double.parse(b!);
        operatr = '-';
        break;
      case "3":
        hasil = double.parse(a!) / double.parse(b!);
        operatr = '/';
        break;
      case "4":
        hasil = double.parse(a!) * double.parse(b!);
        operatr = 'x';
        break;
      case "5":
        hasil = double.parse(a!) % double.parse(b!);
        operatr = '%';
        break;
      default:
        print("Input operasi bilangan dengan tepat !");
        break;
    }

    print("$a $operatr $b = $hasil");

    print("coba lagi? (y/n) ");
    String? lagi = stdin.readLineSync();
    if (lagi != 'y') {
      again = false;
    }
  } while (again);
}
