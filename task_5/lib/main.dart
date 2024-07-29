import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Halo Alterra',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: 'Nama saya adalah ',
              style: TextStyle(color: Colors.black, fontSize: 18),
              children: <TextSpan>[
                TextSpan(
                  text: '\nAgung Nugraha',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.6
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
