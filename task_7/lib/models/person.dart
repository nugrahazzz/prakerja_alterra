class Person {
  final String name;
  final String phoneNumber;

  Person({required this.name, required this.phoneNumber});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'],
      phoneNumber: map['phoneNumber'],
    );
  }
}