void main() {
  // Menentukan jari-jari lingkaran
  double jariJari = 3.0;

  // Menghitung keliling lingkaran
  double keliling = hitungKelilingLingkaran(jariJari);

  // Menampilkan hasil
  print('Keliling lingkaran dengan jari-jari $jariJari adalah $keliling');
}

// Fungsi untuk menghitung keliling lingkaran
double hitungKelilingLingkaran(double jariJari) {
  const double pi = 3.14;
  return 2 * pi * jariJari;
}
