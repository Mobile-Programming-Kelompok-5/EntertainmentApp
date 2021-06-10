import 'package:entertainmentapps/ColorSet.dart';
import 'package:entertainmentapps/Pages/Help.dart';
import 'package:entertainmentapps/Screen/Forget.dart';
import 'package:entertainmentapps/Screen/MenuNavigation.dart';
import 'package:entertainmentapps/Screen/Start.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainColorLight,
        appBar: AppBar(
          backgroundColor: MainColorLight,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.fromLTRB(20, 100, 20, 100),
                child: Column(children: [
                  Row(children: [
                    TextButton(
                      child: Text(
                        'BACK',
                        style: ChooseColor,
                        textAlign: TextAlign.left,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Starter()));
                      },
                    ),
                    Padding(padding: EdgeInsets.only(right: 200, bottom: 50)),
                    TextButton(
                      child: Text('Help!',
                          style: HelpColor, textAlign: TextAlign.left),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Help()));
                      },
                    ),
                  ]),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: UField,
                  ),
                  Container(
                      child: TextField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                  icon: Icon(_obscureText
                                      ? Ionicons.lock_open
                                      : Ionicons.lock_closed),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  })))),
                  Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
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
                              label: Text('Login', style: SignButton),
                              style: LoginButton,
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Forget(),
                                      ));
                                },
                                icon: Icon(Ionicons.help),
                                label:
                                    Text('Forget Password', style: SignButton),
                                style: ForgetButton,
                              ))
                        ],
                      )),
                ]))));
  }
}
