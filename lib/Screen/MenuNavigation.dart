import 'package:entertainmentapps/ColorSet.dart';
import 'package:entertainmentapps/Pages/Home.dart';
import 'package:entertainmentapps/Pages/Library.dart';
import 'package:entertainmentapps/Pages/Search.dart';
import 'package:entertainmentapps/Pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedIndex = 0;

  final screen  = [
    Home(),
    Search(),
    Library(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColorLight,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Options()));
                },
                child: Icon(
                  Ionicons.settings_outline,
                  color: Colors.black,
                )),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ActiveIconcolor,
          backgroundColor: MainColorLight,
          currentIndex: selectedIndex,

          items: [
            BottomNavigationBarItem(
            icon: Icon(Ionicons.musical_notes_outline),
            label: 'Listen Now',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.search_outline),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.book),
            label: 'Library',
          ),
          ],

          onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        ),

        body: screen[selectedIndex],
    );
  }
}