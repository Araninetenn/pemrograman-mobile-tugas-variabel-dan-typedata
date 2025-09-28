import 'dart:io';

class Mahasiswa {
  String nim;
  String nama;
  String jurusan;
  int angkatan;

  Mahasiswa(this.nim, this.nama, this.jurusan, this.angkatan);

  void tampilkanDetail() {
    print("=== Detail Mahasiswa ===");
    print("NIM     : $nim");
    print("Nama    : $nama");
    print("Jurusan : $jurusan");
    print("Angkatan: $angkatan");
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [];

  print("Masukkan data 10 mahasiswa:");
  for (int i = 1; i <= 10; i++) {
    stdout.write("\nMahasiswa ke-$i\n");
    stdout.write("NIM: ");
    String nim = stdin.readLineSync()!;
    stdout.write("Nama: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Jurusan: ");
    String jurusan = stdin.readLineSync()!;
    stdout.write("Angkatan: ");
    int angkatan = int.parse(stdin.readLineSync()!);

    daftarMahasiswa.add(Mahasiswa(nim, nama, jurusan, angkatan));
  }

  // Cari mahasiswa
  print("\nMasukkan NIM atau Nama mahasiswa yang ingin dicari: ");
  String keyword = stdin.readLineSync()!;

  Mahasiswa? hasil = daftarMahasiswa.firstWhere(
    (m) => m.nim == keyword || m.nama.toLowerCase() == keyword.toLowerCase(),
    orElse: () => Mahasiswa("", "", "", 0),
  );

  if (hasil.nim.isNotEmpty) {
    hasil.tampilkanDetail();
  } else {
    print("Mahasiswa tidak ditemukan.");
  }
}
