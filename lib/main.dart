import 'package:assignment/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import SystemChrome

import 'bottombar.dart'; // Import your custom bottom navigation bar
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Hide the Android notification bar (status bar)
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const CustomAppBar(),
        body: MyBody(), // Use your custom top navigation bar as an end drawer
        bottomNavigationBar:
            MyBottomNavigationBar(), // Use your custom bottom navigation bar
      ),
    );
  }
}
