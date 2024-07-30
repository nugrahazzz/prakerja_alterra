import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:task_7/models/person.dart';

String getFirstInitial(String fullName) {
  List<String> nameParts = fullName.split(' ');
  if (nameParts.isNotEmpty) {
    return nameParts[0][0];
  } else {
    return '';
  }
}

Future<List<Person>> loadPersonsFromAssets() async {
  final jsonString = await rootBundle.loadString('assets/person.json');
  final List<dynamic> jsonList = jsonDecode(jsonString);
  return jsonList.map((json) => Person.fromMap(json)).toList();
}