import 'package:entertainmentapps/ColorSet.dart';
import 'package:entertainmentapps/Screen/Start.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: MainColorDark, elevation: 0),
        backgroundColor: MainColorDark,
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.only(top: 30, left: 40, right: 40),
                child: Column(children: [
                  //Email and TextField
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Username or Email ',
                          textAlign: TextAlign.center,
                          style: HeadText,
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30),
                                right: Radius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'New Password',
                          textAlign: TextAlign.center,
                          style: HeadText,
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30),
                                right: Radius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Password and TextField
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('Confirm New Password',
                            textAlign: TextAlign.center, style: HeadText),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30),
                                right: Radius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Starter(),
                                  ));
                            },
                            child: Text(
                              "Reset Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            style: UpButton)),
                  )
                ]))));
  }
}
