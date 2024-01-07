import 'package:YATI/fap_welcome_page.dart';
import 'package:YATI/welcome_page.dart';
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

    Future.delayed(Duration(seconds: 60), () {
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
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image:AssetImage( "assets/yati2.png") )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 20,),
            Text(
              "Welcome To Yati", style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 32
              )
            )
          ],
        )
        
      ),
    );
  }
}