import 'package:entertainmentapps/ColorSet.dart';
import 'package:entertainmentapps/Pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(top: 20, left: 30, right: 20),
              child: Column(children: [
                Row(children: [
                  Container(
                      child: Text(
                    'Listen Now',
                    style: HomeText,
                    textAlign: TextAlign.left,
                  )),
                  Container(
                    padding: EdgeInsets.only(left: 90),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Icon(
                        Ionicons.person_outline,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10),
                      shape: CircleBorder(),
                      color: Colors.black,
                    ),
                  )
                ]),


                divider,
                
              ]))),
    );
  }
}
