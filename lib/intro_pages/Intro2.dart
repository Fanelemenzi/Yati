import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
        Container(
          color: Colors.white,
          alignment: Alignment(-0.4,-0.4),
          child: Image.asset('assets/yati3.jpg', width: 400, height: 400,)
        ),
        Container(
          alignment: Alignment(0.4, 0.4),
          child: Text("Get answers to the most\n Frequently Asked Questions\n about Eswatini Government Services.",
          textAlign: TextAlign.center,
           style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold
           ),
          ),
        )
        ]
      ),
    );
  }
}