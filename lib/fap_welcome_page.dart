import 'package:YATI/dep_pages/home_affairs.dart';
import 'package:YATI/dep_pages/judicial.dart';
import 'package:YATI/dep_pages/regristrar_of_companies.dart';
import 'package:YATI/dep_pages/scholarship.dart';
import 'package:flutter/material.dart';








class faq extends StatelessWidget {
     faq({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar (shape: ContinuousRectangleBorder(
          side: BorderSide(width: 2),
          borderRadius: BorderRadius.circular(20)    
        ),
            title: Text("Gov. Services FAQs"),
          ),
        body: Container(
          child: ListView(
            itemExtent: 63.0,
            reverse: true,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              ListTile(
                shape:ContinuousRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius:BorderRadius.circular(20) 
                ),
                title: Text("Registrar of Companies"),
                subtitle: Text("Ministry of Commerce and Trade"),
                trailing: Icon(Icons.open_in_new),
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Commerce()
                                )
                                );
                  tileColor: Colors.brown.shade50;
                },
              ),
              ListTile(
                shape:ContinuousRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius:BorderRadius.circular(20) 
                ),
                title: Text("Dept. of Home Affairs"),
                subtitle: Text("Ministry of Home Affairs"),
                trailing: Icon(Icons.open_in_new),
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomeAffiars()
                                )
                                );
                  tileColor: Colors.brown.shade50;
                },
              ),
               ListTile(
                shape:ContinuousRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius:BorderRadius.circular(20) 
                ) ,
                title: Text("Dept of Judicial Affiars"),
                subtitle: Text("Ministry of Justice"),
                trailing: Icon(Icons.open_in_new),
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                judicial()
                                )
                                );
                  tileColor: Colors.brown.shade50;
                },
              ),
              ListTile(
                shape:ContinuousRectangleBorder(
                  side: BorderSide(width: 2),
                  borderRadius:BorderRadius.circular(20) 
                ) ,
                title: Text("Scholarship Dept."),
                subtitle: Text("Ministry of Labour and Social Security", ),
                trailing: Icon(Icons.open_in_new),
                onTap: () { 
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Scholarship()
                                )
                                );
                },
              ),
            ],
          ),
        ), 
      );
      
  }
}