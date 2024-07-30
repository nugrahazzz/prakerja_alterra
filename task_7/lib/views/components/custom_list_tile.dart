import 'package:flutter/material.dart';
import 'package:task_7/utils/function.dart';

class CustomListTile extends StatelessWidget {
  final String fullname;
  final String phoneNumber;

  CustomListTile({
    required this.fullname,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration:
              const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          child: Center(
            child: Text(
              getFirstInitial(fullname),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Text(
            fullname,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            phoneNumber,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
