import 'package:entertainmentapps/ColorSet.dart';
import 'package:entertainmentapps/Screen/Login.dart';
import 'package:entertainmentapps/Screen/SignUp.dart';
import 'package:flutter/material.dart';

class Starter extends StatefulWidget {
  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColorDark,
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(left: 40, right: 40, top: 200),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text('Welcome',
                      textAlign: TextAlign.center, style: TextTitle),
                ),
                Column(children: [
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ));
                              },
                              child: Text(
                                'Sign Up',
                                style: SignButton,
                              ),
                              style: UpButton))),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ));
                              },
                              child: Text(
                                'Login',
                                style: SignButton,
                              ),
                              style: LogButton)))
                ])
              ]))),
    );
  }
}
