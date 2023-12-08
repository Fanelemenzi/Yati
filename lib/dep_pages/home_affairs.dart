import 'package:flutter/material.dart';

class HomeAffiars extends StatelessWidget {
     HomeAffiars({Key? key}) : super(key: key);

final questions = [
    {
      'question': '1. What the cost of regristering for National Identity Document and the documents required?',
      'answer': '- Birth Certificate\n - Application form(found it nearest offices)',
    },
    {
      'question' : '2. Who can regrister for a National Identity Document and How long does it take?',
      'answer' : 'To fully regrister your business with the Eswatini Government, you need E1 200 ?'
    },
    {
      'question' : '3. What are the types of passport in Eswatini and their uses?',
       'answer' : '1. SADC passport for use when travelling in countries within the SADC region. Ussually green in colour.\n \n 2. International Travel Passport for use when travelling to countries within SADC region and outiside SADC. Ussually blue in colour. '
    },
      {
      'question' : '4. What are the different catergories(pages) and their prices for SADC region passport(Green)?',
       'answer' : '(a)32 Page - E150.00\n (b)48 Page - E300.00\n (c)64 Page - E500.00'
    },
      {
      'question' : '5. How do you apply for birth certificate and how much does it cost?',
       'answer' : 'To regrister your business, you will need a certifed copy of your ID, business goals, share division'
    },
     {
      'question' : '6. What are the requiered documents needed to regrister for birth certificate?',
       'answer' : 'To regrister your business, you will need a certifed copy of your ID, business goals, share division'
    },
    {
      'question' : '7. What are the different catergories(pages) and their prices for International passport(Blue)?',
       'answer' : '(a)32 Page - E300.00\n (b)48 Page - E400.00\n (c)64 Page - E700.00\n (d)32 page Service Passport - E400.00\n (f)32 page Diplomatic Passport - E600.00'
    },
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