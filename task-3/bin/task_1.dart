//Terdapat sebuah nilai:
// jika nilai > 70 akan mereturn “Nilai A”
// jika nilai > 40 akan mereturn “Nilai B”
// jika nilai > 0 akan mereturn “Nilai C”
// selain itu return teks kosong

void main() {

  print(checkPassingGrade(100));
  print(checkPassingGrade(69));
  print(checkPassingGrade(39)); // Output: Nilai C
  print(checkPassingGrade(0)); // Output:
}

String checkPassingGrade(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40) {
    return "Nilai B";
  } else if (nilai > 0) {
    return "Nilai C";
  } else {
    return "";
  }
}
