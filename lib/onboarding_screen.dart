import 'package:YATI/fap_welcome_page.dart';
import 'package:YATI/intro_pages/Intro1.dart';
import 'package:YATI/intro_pages/Intro2.dart';
import 'package:YATI/intro_pages/Intro3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

  //Controller keeps track of page we on
  PageController _controller = PageController();

 //keep track of if we are on last page or not  
 bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index ==2);
              });
            },
        children: [
          Intro1(),
          Intro2(),
          Intro3()
        ],
      ),
      //Dot indicators
     Container(
      alignment: Alignment(10, 0.90),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Skip
          ElevatedButton(  
                        onPressed: () {
                               Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  faq()
                                  )
                                  );
                        }, child: Text("Skip"), 
          ),
          //dot indicators
          SmoothPageIndicator(controller: _controller, count:3),

          //next or done
          onLastPage ?
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return faq();
            },
          )
          );},
            child: Text("Done")
           )
           : ElevatedButton(
            onPressed: () {
              _controller.nextPage(duration: Duration(milliseconds: 500), 
              curve: Curves.easeIn);
            },
            child: Text("Next")
           )
        ],
       )
     )
        ],
      ),
    );
  }
}