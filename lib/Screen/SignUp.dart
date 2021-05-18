import 'package:entertainmentapps/ColorSet.dart';
import 'package:entertainmentapps/Screen/MenuNavigation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColorDark,
      appBar: AppBar(
        backgroundColor: MainColorDark,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.only(top: 30, left: 40, right: 40),
            child: Column(
              children: [
                Column(
                  children: [
                    Text('Username', style: HeadText),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('Email', style: HeadText),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('Password', style: HeadText),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    )
                  ],
                ),

                SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuScreen(),
                        ));
                  },
                  icon: Icon(Ionicons.log_in_outline),
                  label: Text('SignUp', style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                          right: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            )),
      ),
    );
  }
}
