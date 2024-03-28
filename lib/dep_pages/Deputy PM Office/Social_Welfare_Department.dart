import 'package:flutter/material.dart';

class SocialWelfare extends StatelessWidget {
     SocialWelfare({Key? key}) : super(key: key);

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
            automaticallyImplyLeading: false,
            backgroundColor: Colors.indigo.shade900,
            title: Text("Social Welfare FAQs",
             style: TextStyle(
          fontSize: 22,
        ),
            ),
          ),
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