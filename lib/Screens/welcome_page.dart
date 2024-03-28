import 'package:YATI/Screens/about.dart';
import 'package:YATI/Screens/most_used.dart';
import 'package:YATI/Screens/profile.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Agriculture/vet_livestock_production.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Commerce/Cooperative_developement.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Commerce/Liquor_department.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Home%20Affairs/home_affairs.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Commerce/regristrar_of_companies.dart';
import 'package:YATI/dep_pages/Ministry%20of%20Labour/Industrial_and_Vacational_training.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../dep_pages/Deputy PM Office/Social_Welfare_Department.dart';
import '../dep_pages/Ministry of Labour/scholarship.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //this selected index is to control the bottom nav bar
          int _selectedIndex = 0;

        //this method will update our selected index
          void navigateBottomBar(int index){
            setState(() {
              _selectedIndex= index;
            });
          }

        
            //Pages to display
          final List<Widget> _pages = [
           WelcomePage(),
           AboutPage(),
           MostUsedPage(),
           ProfilePage()

          ];

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

  final icons = [
    const Icon(Icons.open_in_new),
    const Icon(Icons.open_in_new),
    const Icon(Icons.open_in_new),
    const Icon(Icons.open_in_new),
    const Icon(Icons.open_in_new),
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
      bottomNavigationBar: Container(
        color: Colors.indigo.shade900,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: GNav(
            backgroundColor: Colors.indigo.shade900,
            color: Colors.white,
            activeColor:Colors.white,
            tabBackgroundColor: Colors.amber.shade700,
            gap: 8,
            onTabChange: (index) {
              
            },
            padding: EdgeInsets.all(16),
            tabs: const [
                GButton(icon: Icons.home,
                text: "Home",
                ),
                GButton(icon: Icons.list,
                text: "Most Used",
                ),
                GButton(icon: Icons.info,
                text: "About"
                ),
                GButton(icon: Icons.person,
                text: "Profile"
                )
            ]
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: const Text("Government Departments",
        style: TextStyle(
          fontSize: 22,
        ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
           Column(
            children: [
               //logo
            DrawerHeader(
              child: Image.asset("assets/yati2.png") 
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.white,
              ),
            ),


            //other pages
               //Home
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home,
                color: Colors.white,
                ),
                title: Text("Home",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),

               //About
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info,
                color: Colors.white,
                ),
                title: Text("About",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),

            ///code for dropdown list on the app drawer
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Theme(
                data: new ThemeData(
                  canvasColor: Colors.white,
                  primaryColor: Colors.white,
                  accentColor: Colors.white,
                  hintColor: Colors.white
                ),
                child: DropdownButton<String>(
                isExpanded: true,
                iconEnabledColor: Colors.white,
                hint:  Text(
                  "Select a department",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                items:<String>[
                  'Home Affairs/Civil Regristration',
                  'Regristrar of Companies',
                  'Scholarship Service',
                  'Social Welfare Department',
                  'Industrial and Vocational Training',
                  'Liqour License Department',
                  'Veterinary and Livestock Production Services',
                  'Department of Cooperative Development'
                  ].map((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                );
                }
                ).toList(),
                onChanged: (String? value){
                  if(value != null){
                    Navigator.pushNamed(context, value);
                  }
                }
                ),
              ),
            ),

            ],
           ),

              //Logout
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout_outlined,
                color: Colors.white,
                ),
                title: Text("Logout",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),



          ],
        ),
      ),


      body: Column(
        children: [
          SizedBox(height: 20,),
          const Text(
            "Commonly Used Departments",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          ///Listview for common used departments
          SizedBox(
            height: 400,
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
                              style: TextStyle(color: Colors.black,
                              fontSize: 17, fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Text(
                              ministries[index],
                              style: TextStyle(color: Colors.black,
                              fontSize: 15, 
                              ),
                            ),
                            onTap: () {
                              if (currentItem == "Regristrar of Companies") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegristrarCompanies()));
                              } else if (currentItem == "Home Affairs/Civil Regristration") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeAffiars()));
                              } else if (currentItem == "Scholarship Service") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Scholarship()));
                              } else if (currentItem == "Social Welfare Department") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SocialWelfare()));
                              } else if (currentItem == "Industrial and Vocational Training") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VocationalTraining() ));
                              } else if (currentItem == "Liquor Licensing Department") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LiquorDepartment()));
                              }else if (currentItem == "Veterinary and Livestock Production Services") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VeterinaryServices()));
                              }else if (currentItem == "Department of Cooperative Development") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CooperativeDevelopment()));
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

          const SizedBox(height: 10,),

          Text(
            "Choose a Department",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(height: 10,),

          ///This section covers the drop down menu where different departments can be selected. 
          Padding(
           padding:  EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber.shade700
              ),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                isExpanded: true,
                hint:  Text(
                  "Select a department",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
                items:<String>[
                  'Home Affairs/Civil Regristration',
                  'Regristrar of Companies',
                  'Scholarship Service',
                  'Social Welfare Department',
                  'Industrial and Vocational Training',
                  'Liqour License Department',
                  'Veterinary and Livestock Production Services',
                  'Department of Cooperative Development' 
                  ].map((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                );
                }
                ).toList(),
                onChanged: (String? value){
                  if(value != null){
                    Navigator.pushNamed(context, value);
                  }
                }
                ),
            ),
          )
        ],
      ),
    );
  }
}
