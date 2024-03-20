
import 'package:YATI/dep_pages/Deputy%20PM%20Office/Social_Welfare_Department.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Agriculture/vet_livestock_production.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Commerce/Cooperative_developement.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Commerce/Liquor_department.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Commerce/regristrar_of_companies.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Home%20Affairs/home_affairs.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Labour/Industrial_and_Vacational_training.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Labour/scholarship.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade500
      ),
      home: SplashScreen(),
      routes: {
        'Home Affairs/Civil Regristration': (context) => HomeAffiars(),
        'Regristrar of Companies': (context) => RegristrarCompanies(),
        'Scholarship Service': (context) => Scholarship(),
        'Social Welfare Department': (context) => SocialWelfare(),
        'Industrial and Vocational Training': (context) => VocationalTraining(),
        'Liqour License Department': (context) => LiquorDepartment(),
        'Veterinary and Livestock Production Services': (context) => VeterinaryServices(),
        'Department of Cooperative Development': (context) => CooperativeDevelopment(),
      },
    );
  }
}