
import 'package:YATI/Screens/welcome_page.dart';
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_)=> WelcomePage() )
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