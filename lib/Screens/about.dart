import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("This is the about page",
      
      style: TextStyle(
        color: Colors.black
      ),
      )),
    );
  }
}
