///this page contains information and code for the cooperative department 

import 'package:flutter/material.dart';

class CooperativeDevelopment extends StatelessWidget {
  CooperativeDevelopment({super.key});


  ///list of FAQs and answers for the cooperative department
  final questions = [
    {
      'question': 'What services available in Tinkhundla centers?',
      'answer': 'Flutter is a mobile app development framwork created by Google. It allows developers to build natively compiled applications',
    },
    {
      'question' : 'Can you apply for ID at your Inkhundla center?',
      'answer' : 'To fully regrister your business with the Eswatini Government, you need E1 200 ?'
    },
    {
      'question' : 'How can a citizen of Inkhundla use resources and services available at Tinkhundla centers?',
       'answer' : 'To regrister your business, you will need a certifed copy of your ID, business goals, share division'
    },
     {
      'question' : 'Who can apply for the Regional Development Fund?',
       'answer' : 'To regrister your business, you will need a certifed copy of your ID, business goals, share division'
    },
    {
      'question' : 'What the required documents for The Regional Development Fund application?',
       'answer' : 'To regrister your business, you will need a certifed copy of your ID, business goals, share division'
    },
    {
      'question' : 'Who works at Tinkhundla centers?',
       'answer' : 'To regrister your business, you will need a certifed copy of your ID, business goals, share division'
    }
  ];


 @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.indigo.shade900,
            title: Text("Cooperative Development Department FAQs",
             style: TextStyle(
          fontSize: 22,
        ),
            ),
          ),


          ///Listview renders a list of FAQs and their answers called from the data stored or fetched from above list
        body: ListView.separated(
          itemCount:questions.length,
          itemBuilder: (BuildContext context, int index ){
            final question = questions[index] ['question'];
            final answer = questions[index] ['answer'];
              return Card(
                color: Colors.white,
                child: ExpansionTile(
                  collapsedBackgroundColor: Colors.amber.shade600,
                  collapsedTextColor: Colors.black,
                   title: Text(question!, style: const TextStyle(
                    fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black ),),
                children: [
                     Padding (
                        padding: const EdgeInsets.all(8.0),
                        child: Text(answer!, style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black
                        ),
                        ),
                      )
                ],
                ),
                );
          }, 
          separatorBuilder:  (BuildContext context, int index)=>const Divider(height: 3, color: Colors.black,),
          ),
        ),
    );
  }
}