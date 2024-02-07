import 'package:flutter/material.dart';

class Scholarship extends StatelessWidget {
  Scholarship({super.key});

  final questions = [
    {
      'question': '1. Who qualifies for Eswatini Government Study Loan?',
      'answer': 'A citizen of Eswatini',
    },
    {
      'question' : '2. How does study loan work?',
      'answer' : 'To fully regrister your business with the Eswatini Government, you need E1 200 ?'
    },
    {
      'question' : '3. What are the required documents for Study Loan application?',
       'answer' : '-Application form\n -Acceptance letter\n -Certified copies of the applicants birth and academic certificate\n Certified copies of the applicants ID card or Personal Identification Number(PIN), a current passport sized photo,\n A Graded Tax Certificate  '
    },
     {
      'question' : '4. How and when to apply for scholarship to international university/institution?',
       'answer' : 'Completion of scholarship application form - Applying and getting a written acceptance letter from a recognized tertiary institution - Presenting the application form for a scholarship to the scholarship secretariat'
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
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