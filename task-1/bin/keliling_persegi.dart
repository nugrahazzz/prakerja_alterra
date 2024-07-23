void main() {
  // Menentukan panjang sisi persegi
  double sisi = 3.0;

  // Menghitung keliling persegi
  double keliling = menghitungKelilingPersegi(sisi);

  // Menampilkan hasil
  print('Keliling persegi dengan sisi $sisi ialah $keliling');
}

// Fungsi untuk menghitung keliling persegi (terdapat 4 jumlah sisi)
double menghitungKelilingPersegi(double sisi) {
  return 4 * sisi;
}