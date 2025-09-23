import 'dart:io';

void main() {
  // Meminta input skor dari pengguna
  print('Masukkan skor ujian Anda (0-100):');
  String? input = stdin.readLineSync();

  // Mengkonversi input ke angka
  int? skor = int.tryParse(input ?? '');

  // Validasi input
  if (skor == null || skor < 0 || skor > 100) {
    print('Input tidak valid! Skor harus antara 0 dan 100.');
  } else {
    // Menentukan grade menggunakan pernyataan if-else
    String grade;

    if (skor >= 85) {
      grade = 'A';
    } else if (skor >= 70) {
      grade = 'B';
    } else if (skor >= 60) {
      grade = 'C';
    } else if (skor >= 50) {
      grade = 'D';
    } else {
      grade = 'E';
    }

    // Menampilkan hasil output
    print('Skor Anda: $skor');
    print('Nilai Anda: $grade');
  }
}
