import 'package:YATI/dep_pages/home_affairs.dart';
import 'package:YATI/dep_pages/judicial.dart';
import 'package:YATI/dep_pages/regristrar_of_companies.dart';
import 'package:YATI/dep_pages/tinkhundla.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

final departments = [
  "Regristrar of Companies",
   "HomeAffairs",
   "Scholarship Board",
   "Tinkhundla",
   "Judicial",
   "Agriculture",
   "Public Service",
   "Youth Chamber",
   "Health",
   "DPM Office",
   "ICT"

];

final icons = [
   const Icon(Icons.open_in_new),
   const Icon(Icons.open_in_new),
   const Icon(Icons.open_in_new),
   const Icon(Icons.open_in_new),
   const Icon(Icons.open_in_new),
];
final ministries = [
    "Ministry of Commerce",
    "Ministry of Home Affiars",
    "Ministry of Labour and Social Security",
    "Ministry of Tinkhundla",
    "Ministry of Judicial Affairs",
    "Ministry of Agriculture",
    "MInistry of Home Affiars",
    "Ministry of Sports and Recreation",
    "Ministry of Health",
    "DPM Office",
    "Ministry of Information Technology"
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: const Text(
              "Government Departments"
            ),
          ),
          body: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index ){
              var currentItem = departments[index];
              return GestureDetector(
                child: Card(
                  child: ListTile(
                    tileColor: Colors.black,
                    //trailing: Icon(icons[index] as IconData?),
                    title: Text(departments[index], style: TextStyle(color: Colors.white),),
                    subtitle: Text(ministries[index], style: TextStyle(color: Colors.grey),),
                    onTap: () {
                        if (currentItem == "Regristrar of Companies") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Commerce() ));
                        }else if (currentItem == "HomeAffairs") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeAffiars() ));
                        }else if (currentItem == "Scholarship Board") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Scholarship() ));
                        }else if (currentItem == "Tinkhundla") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Scholarship()));
                        }else if (currentItem == "Judicial") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Judicial() ));
                        }else if (currentItem == "Agriculture") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Commerce() ));
                        }
                        
                    }
                        
              )
              )
              );
          },   
          separatorBuilder: (BuildContext context, int index)=>const Divider(height: 3, color: Colors.white,), 
          itemCount: departments.length, 
          ),
    );
  }
}



