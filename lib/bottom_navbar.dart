import 'package:YATI/Screens/about.dart';
import 'package:YATI/Screens/most_used.dart';
import 'package:YATI/Screens/profile.dart';
import 'package:YATI/Screens/welcome_page.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
    int _selectedIndex = 0;

    final List <Widget> _pages = [
      WelcomePage(),
      const MostUsedPage(),
      const AboutPage(),
      const ProfilePage()
    ];

    void _onItemTapped (int index){
        setState(() {
          _selectedIndex = index;
        });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "Government Departments",
          style: TextStyle(fontSize: 22, color: Colors.white,
          fontWeight: FontWeight.bold
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.indigo.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset(
                    "assets/yati3.png",
                  ),
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
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                //About
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                ///code for dropdown list on the app drawer
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Theme(
                    data: ThemeData(
                        canvasColor: Colors.white,
                        primaryColor: Colors.white,
                        hintColor: Colors.white),
                    child: DropdownButton<String>(
                        isExpanded: true,
                        iconEnabledColor: Colors.white,
                        hint: Text(
                          "Select a department",
                          style: TextStyle(color: Colors.white),
                        ),
                        items: <String>[
                          'Home Affairs/Civil Regristration',
                          'Regristrar of Companies',
                          'Scholarship Service',
                          'Social Welfare Department',
                          'Industrial and Vocational Training',
                          'Liqour License Department',
                          'Veterinary and Livestock Production Services',
                          'Department of Cooperative Development'
                        ].map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          if (value != null) {
                            Navigator.pushNamed(context, value);
                          }
                        }),
                  ),
                ),
              ],
            ),

            //Logout
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),


      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:_onItemTapped,
        selectedItemColor: Colors.amber.shade800,
        unselectedItemColor: Colors.indigo.shade900,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Most Used"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        ]
        ),
    );
  }
}