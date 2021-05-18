import 'package:flutter/material.dart';

const MainColorDark = Colors.black;
const MainColorLight = Colors.white;
const HelpButtonColor = Colors.redAccent;
const TextColorDark = Colors.black;
const TextColorLight = Colors.white;
const ActiveIconcolor = Colors.orangeAccent;

const TextTitle =
    TextStyle(color: TextColorLight, fontSize: 50, fontWeight: FontWeight.bold);

const TextAppBar =
    TextStyle(color: MainColorDark, fontSize: 30, fontWeight: FontWeight.bold);

const HomeText =
    TextStyle(color: TextColorDark, fontSize: 30, fontWeight: FontWeight.bold);

const SignButton = TextStyle(color: TextColorLight, fontSize: 20);

const ChooseColor = TextStyle(color: TextColorDark, fontSize: 20);

const HelpColor = TextStyle(
    color: HelpButtonColor, fontSize: 20, fontWeight: FontWeight.bold);

const HeadText =
    TextStyle(color: TextColorLight, fontSize: 20, fontWeight: FontWeight.bold);

ButtonStyle UpButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.green),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(30),
        right: Radius.circular(30),
      ),
    ),
  ),
);

ButtonStyle LogButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.transparent),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(30),
        right: Radius.circular(30),
      ),
    ),
  ),
);

ButtonStyle LoginButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(30),
        right: Radius.circular(30),
      ),
    ),
  ),
);

ButtonStyle ForgetButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(30),
        right: Radius.circular(30),
      ),
    ),
  ),
);

TextField UField = TextField(
    decoration: InputDecoration(
  border: OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      const Radius.circular(20.0),
    ),
  ),
  labelText: 'Username or Email'
));


Divider divider = Divider(
  color: Colors.black45,
  endIndent: 20,
);
