//Buatlah sebuah fungsi dengan spesifikasi berikut:
// Menerima 2 parameter, yaitu list data dan pengali
// Lakukan perulangan pada list data secara asynchronous
// Tiap perulangan, kalikan elemen list data dengan pengali
// Return list baru yang berisi hasil proses diatas


void main() async {
  List<int> data = [1, 2, 3];
  int pengali = 2;

  Future<List<int>> mengalikanList(List<int> data, int pengali) async {
    List<int> result = [];
    for (int item in data) {
      // Menggunakan Future.delayed untuk mensimulasikan operasi asynchronous
      await Future.delayed(Duration(milliseconds: 100));
      result.add(item * pengali);
    }
    return result;
  }


  print("Data awal : " + data.toString()); // Output: [3, 6, 9, 12, 15]
  print("Dikalikan : " + pengali.toString()); // Output: [3, 6, 9, 12, 15]
  List<int> result = await mengalikanList(data, pengali);
  print("======================");
  print("Outputnya : " + result.toString()); // Output: [3, 6, 9, 12, 15]
}
