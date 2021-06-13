import 'package:entertainmentapps/ColorSet.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          backgroundColor: MainColorLight,
          automaticallyImplyLeading: false,
          pinned: true,
          expandedHeight: 150.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Search',
              style: HomeText,
            ),
          ),
          elevation: 0,
        ),
        
      ],
    ))));
  }
}
