// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:interview/views/home_screen.dart';
import 'package:interview/views/sidebar.dart';
import 'package:interview/views/sidebar_layout.dart';
// import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    MyApp(),
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SideBar(),
    );
  }
}
