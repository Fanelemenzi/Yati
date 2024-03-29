import 'package:flutter/material.dart';

class Judicial extends StatelessWidget {
     Judicial({Key? key}) : super(key: key);

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
          appBar: AppBar(
            title: Text("Home Affiars FAQs"),
          ),
        body: ListView.separated(
          itemCount:questions.length,
          itemBuilder: (BuildContext context, int index ){
            final question = questions[index] ['question'];
            final answer = questions[index] ['answer'];
              return Card(
                child: ExpansionTile(
                  backgroundColor: Colors.black,
                   title: Text(question!, style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, ),),
                children: [
                     Padding (
                        padding: const EdgeInsets.all(8.0),
                        child: Text(answer!),
                      )
                ],
                ),
                );
          }, 
          separatorBuilder:  (BuildContext context, int index)=>const Divider(height: 3, color: Colors.white,),
          ),
        ),
    );
  }
}