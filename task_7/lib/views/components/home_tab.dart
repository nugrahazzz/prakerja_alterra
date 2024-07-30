import 'package:flutter/material.dart';
import 'package:task_7/models/person.dart';
import 'package:task_7/utils/function.dart';
import 'package:task_7/views/components/custom_list_tile.dart';

class HomeTab extends StatelessWidget {
  // final List<Person> persons = [
  //   Person(name: 'Leanne Graham', phoneNumber: '1-770-736-8031 x56442'),
  //   Person(name: 'Ervin Howell', phoneNumber: '010-692-6593 x09125'),
  //   Person(name: 'Charlie', phoneNumber: '1-463-123-4447'),
  //   Person(name: 'Clementine Bauch', phoneNumber: '1-463-123-447'),
  //   Person(name: 'Petricia Lebsack', phoneNumber: '493-170-9623 x156'),
  //   Person(name: 'Chelsey Dietrich', phoneNumber: '(254)954-1289'),
  //   Person(name: 'Mrs. Dennis Schullist', phoneNumber: '1-477-935-8478 x6430'),
  //   Person(name: 'Kurtis Weissnat', phoneNumber: '210.067.6132'),
  //   Person(name: 'Charlie', phoneNumber: '1-463-123-4447'),
  // ];

  HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<Person>>(
      future: loadPersonsFromAssets(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        final persons = snapshot.data!;
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),
          itemCount: persons.length,
          itemBuilder: (context, index) {
            final person = persons[index];
            return CustomListTile(
              fullname: person.name,
              phoneNumber: person.phoneNumber,
            );
          },
        );
      },
    );
  }
}
