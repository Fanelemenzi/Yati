import 'package:YATI/onboarding_screen.dart';
import 'package:YATI/opening_screen.dart';
import 'package:YATI/welcome_page.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(MyApp() );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
      ),
      home: SplashScreen()
    );
  }
}