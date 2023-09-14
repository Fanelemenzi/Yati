import 'package:flutter/material.dart';

class judicial extends StatelessWidget {
     judicial({Key? key}) : super(key: key);

  final questions = [
    {
      'question': 'what is flutter',
      'answer': 'Flutter is a mobile app development framwork created by Google. It allows developers to build natively compiled applications',
    },
    {
      'question' : 'How much do you need to regrister your business with commernce and get certificate of incoporation? ',
      'answer' : 'To fully regrister your business with the Eswatini Government, you need E1 200 ?'
    },
    {
      'question' : 'What are the required documents needed by Ministry of Commerce to regrister your business?',
       'answer' : 'To regrister your business, you will need a certifed copy of your ID, business goals, share division'
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar (
            title: Text("Judicial FAQ"),
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