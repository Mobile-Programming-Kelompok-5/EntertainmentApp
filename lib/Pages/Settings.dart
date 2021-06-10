import 'package:entertainmentapps/ColorSet.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  var switch1 = false;
  var switch2 = false;
  var switch3 = false;
  var switch4 = false;
  var switch5 = false;
  var switch6 = false;
  var switch7 = false;

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
     

     body: ListView(
      children: [
        const Padding(padding: EdgeInsets.only(top: 24)),
        ListTile(
          title: const Text('Send me marketing emails'),
          // The Material switch has a platform adaptive constructor.
          trailing: Switch.adaptive(
            value: switch1,
            onChanged: (value) => setState(() => switch1 = value),
          ),
        ),
        ListTile(
          title: const Text('Enable notifications'),
          trailing: Switch.adaptive(
            value: switch2,
            onChanged: (value) => setState(() => switch2 = value),
          ),
        ),
        ListTile(
          title: const Text('Remind me to rate this app'),
          trailing: Switch.adaptive(
            value: switch3,
            onChanged: (value) => setState(() => switch3 = value),
          ),
        ),
        ListTile(
          title: const Text('Background song refresh'),
          trailing: Switch.adaptive(
            value: switch4,
            onChanged: (value) => setState(() => switch4 = value),
          ),
        ),
        ListTile(
          title: const Text('Recommend me songs based on my location'),
          trailing: Switch.adaptive(
            value: switch5,
            onChanged: (value) => setState(() => switch5 = value),
          ),
        ),
        ListTile(
          title: const Text('Auto-transition playback to cast devices'),
          trailing: Switch.adaptive(
            value: switch6,
            onChanged: (value) => setState(() => switch6 = value),
          ),
        ),
        ListTile(
          title: const Text('Find friends from my contact list'),
          trailing: Switch.adaptive(
            value: switch7,
            onChanged: (value) => setState(() => switch7 = value),
          ),
        ),
      ],
    ),
    );
  }
}
