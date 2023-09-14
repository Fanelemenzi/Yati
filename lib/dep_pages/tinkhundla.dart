import 'package:flutter/material.dart';

class Scholarship extends StatelessWidget {
  Scholarship({super.key});

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
        appBar: AppBar (
            title: Text("Tikhundla FAQ"),
          ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: questions.length,
            itemBuilder: ((context, index) {
              final question = questions[index] ['question'];
              final answer = questions[index] ['answer'];
              return ExpansionTile(
                title: Text(question!, style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, 
                ),),
                children: [
                  Padding (
                    padding: const EdgeInsets.all(8.0),
                    child: Text(answer!),
                  )
                ], 
              );

            }),
          ),
        ),
      )
    );
  }
}