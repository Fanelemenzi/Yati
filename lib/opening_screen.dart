
import 'package:YATI/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  @override
  void initState(){
    super.initState();
    ///this part removes the backward arrows on each of the pages in appplication
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

//this function sets the duration of the splashcreen that shows when you open the application, after the duration its renders the BottomNav bar

    Future.delayed(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_)=> BottomNav() )
        );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: SystemUiOverlay.values);
    super.dispose();
  }



   @override
  Widget build(BuildContext context) {
    ///this widget controls the rendering of the images/Yati logo on the Spashscreeen
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.indigo.shade900,
          image: DecorationImage(image:AssetImage( "assets/yati3.png") )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/yati3.png"),
            const SizedBox(height: 20,),
           /* const Text(
              "Welcome To Yati", style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 32
              )
            ) */
          ],
        )
        
      ),
    );
  }
}