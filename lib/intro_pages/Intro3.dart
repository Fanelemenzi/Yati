import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
           Container(
            alignment: Alignment(-0.6,-0.6),
          color: Colors.white,
          child: Image.asset('assets/yat4.jpg', width: 400, height: 400,)
        ),
        Container(
           alignment: Alignment(0.4, 0.4),
          child: Text("Get the right information before you make the crucial decision",
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