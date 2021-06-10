import 'package:flutter/material.dart';


class Help extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Center(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(top:100, left:40, right: 40),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 60.0, horizontal: 60.0),
                color: Colors.deepOrange,
              ),
            ),
          ]))),
    );
  }
}
