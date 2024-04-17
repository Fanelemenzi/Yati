import 'package:flutter/material.dart';

import '../dep_pages/Deputy PM Office/Social_Welfare_Department.dart';
import '../dep_pages/Ministry of Agriculture/vet_livestock_production.dart';
import '../dep_pages/Ministry of Commerce/Cooperative_developement.dart';
import '../dep_pages/Ministry of Commerce/Liquor_department.dart';
import '../dep_pages/Ministry of Commerce/regristrar_of_companies.dart';
import '../dep_pages/Ministry of Home Affairs/home_affairs.dart';
import '../dep_pages/Ministry of Labour/Industrial_and_Vacational_training.dart';
import '../dep_pages/Ministry of Labour/scholarship.dart';

class AllDepartments extends StatelessWidget {
  AllDepartments({super.key});

  final departments = [
    "Regristrar of Companies",
    "Home Affairs/Civil Regristration",
    "Scholarship Service",
    "Social Welfare Department",
    "Industrial and Vocational Training",
    "Liquor Licensing Department",
    "Veterinary and Livestock Production Services",
    "Department of Cooperative Development"
  ];

  final ministries = [
    "Ministry of Commerce Industry & Trade",
    "Ministry of Home Affairs",
    "Ministry of Labour & Social Security",
    "The Deputy Prime Ministers Office",
    "Ministry of Labour and Social Security",
    "Ministry of Commerce, Industry & Trade",
    "Ministry of Agriculture",
    "Ministry of Commerce, Industry & Trade"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 550,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var currentItem = departments[index];
                return GestureDetector(
                    child: Card(
                        child: ListTile(
                            tileColor: Colors.amber.shade700,
                            title: Text(
                              departments[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              ministries[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            onTap: () {
                              if (currentItem == "Regristrar of Companies") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegristrarCompanies()));
                              } else if (currentItem ==
                                  "Home Affairs/Civil Regristration") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeAffiars()));
                              } else if (currentItem == "Scholarship Service") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Scholarship()));
                              } else if (currentItem ==
                                  "Social Welfare Department") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SocialWelfare()));
                              } else if (currentItem ==
                                  "Industrial and Vocational Training") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VocationalTraining()));
                              } else if (currentItem ==
                                  "Liquor Licensing Department") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LiquorDepartment()));
                              } else if (currentItem ==
                                  "Veterinary and Livestock Production Services") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            VeterinaryServices()));
                              } else if (currentItem ==
                                  "Department of Cooperative Development") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CooperativeDevelopment()));
                              }
                            })));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 1,
              ),
              itemCount: departments.length,
            ),
          ),
        ],
      )
    );
  }
}