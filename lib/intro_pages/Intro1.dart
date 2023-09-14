import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage( "assets/yati2.png")) ,
            color: Colors.black,
            border: Border.all(
              color: Colors.black,
              width: 10,
              
            )
          ),
          
        ),
      ),
    );
  }
}