import 'package:entertainmentapps/ColorSet.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColorLight,
      appBar: AppBar(
        backgroundColor: MainColorLight,
        leading: IconButton(
          icon: Icon(Ionicons.arrow_back_outline, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        title: Text('Settings',
            style: TextAppBar),
        centerTitle: true,
        elevation: 0,
      ),
     
    );
  }
}
