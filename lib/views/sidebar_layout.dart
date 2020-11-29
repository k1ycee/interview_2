import 'package:flutter/material.dart';
import 'package:interview/constants/colors.dart';
import 'package:interview/views/home_screen.dart';

class SideBarLayout extends StatefulWidget {
  @override
  _SideBarLayoutState createState() => _SideBarLayoutState();
}

class _SideBarLayoutState extends State<SideBarLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: body,
      body: Stack(
        children: [
          HomeScreen(),
        ],
      ),
    );
  }
}
