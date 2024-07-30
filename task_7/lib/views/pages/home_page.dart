import 'package:flutter/material.dart';
import 'package:task_7/models/person.dart';
import 'package:task_7/views/components/custom_list_tile.dart';
import 'package:task_7/views/components/home_tab.dart';
import 'package:task_7/views/components/profile_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {


  var index = 0;

  final tabScreens = [
    HomeTab(),
    const ProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MaterialApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(48, 48, 48, 1),
      ),
      body:
      tabScreens[index],
      drawer: Theme(
        data: Theme.of(context).copyWith(
          dividerTheme: const DividerThemeData(color: Colors.transparent),
        ),
        child: Drawer(
          backgroundColor: const Color.fromRGBO(48, 48, 48, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: Divider.createBorderSide(context,
                          color: Colors.transparent, width: 2.0),
                    ),
                  ),
                  child: const Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'
            ),
          ]
      ),
    );
  }
}
