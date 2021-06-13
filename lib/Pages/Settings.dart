import 'package:entertainmentapps/ColorSet.dart';
import 'package:entertainmentapps/Router.dart';
import 'package:entertainmentapps/Screen/Start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColorLight,
      appBar: AppBar(
        backgroundColor: MainColorLight,
        leading: IconButton(
          icon: Icon(
            Ionicons.arrow_back_outline,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        title: Text('Settings', style: TextAppBar),
        centerTitle: true,
        elevation: 0,
      ),
      body: List(),
    );
  }
}

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  bool _darkmode = false;
  bool _notification = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(children: <Widget>[
        Card(
          color: CardColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: SwitchListTile(
            title: Text('Enable Dark Mode'),
            value: _darkmode,
            onChanged: (bool value) {
              setState(() {
                _darkmode = value;
              });
            },
            secondary: const Icon(Ionicons.moon_outline),
          ),
        ),
        Card(
          color: CardColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: SwitchListTile(
            title: Text('Enable Notification'),
            value: _notification,
            onChanged: (bool value) {
              setState(() {
                _notification = value;
              });
            },
            secondary: const Icon(Ionicons.notifications),
          ),
        ),
        Card(
            color: CardColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Icon(Ionicons.key_outline),
              title: Text(
                'License',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                
              },
              dense: true,
            )),
        Card(
            color: CardColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Icon(Ionicons.information_circle_outline),
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text('About Us'),
                  content: const Text(
                      'Simple Music app made by Mobile Programming Kelompok'),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () => Navigator.pop(context, 'Close'),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              ),
              dense: true,
            )),
        Card(
            color: CardColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Icon(Ionicons.exit_outline),
              title: Text(
                'Log Out',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Starter(),
                    ));
              },
              dense: true,
            )),
      ]),
    );
  }
}
