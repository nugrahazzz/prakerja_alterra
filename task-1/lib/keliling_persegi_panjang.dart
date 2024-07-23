void main() {
  // Menentukan panjang dan lebar persegi panjang
  double panjang = 3.0;
  double lebar = 2.0;

  // Menghitung keliling persegi panjang
  double keliling = menghitungKelilingPersegiPanjang(panjang, lebar);

  // Menampilkan hasil
  print('Keliling persegi panjang dengan panjang $panjang dan lebar $lebar adalah $keliling');
}

// Fungsi untuk menghitung keliling persegi panjang
double menghitungKelilingPersegiPanjang(double panjang, double lebar) {
  return 2 * (panjang + lebar);
}
