///this page contains information and code for the department of regristrar of companies

import 'package:flutter/material.dart';

class RegristrarCompanies extends StatelessWidget {
     RegristrarCompanies({Key? key}) : super(key: key);


    ///list of FAQs and answers for the regristrar of companies department 
  final questions = [
    {
      'question': '1. How much does it cost to regrister a fully legal business?',
      'answer': 'To incorporate a company with regristrar of companies will be costed based on nominal capital\n E10 000 - E625.00,\n E30 000 - E925.00\n E50 000 - E1 300.00\n exceeds E50 000 - E1 825.00',
    },
    {
      'question' : '2. What is a fully regristered business entity?',
      'answer' : ' A company with a fully regristered name and a certificate of incorporation and Form J.'
    },
    {
      'question' : '3. What are the required documents needed by Ministry of Commerce to regrister your business?',
       'answer' : '-Directors TIN(Graded Tax Certificate) \n -Memorandum and Articles of Association \n -Company objectives(What the company will do)\n -Directors IDs -Reservation of company name'
    },
      {
      'question' : '4. What are the types of business that can be regristered with the Department of Commerce?',
       'answer' : '1.Sole Traders\n 2.Investment Company\n 3.Propriety Limited Company\n 4.Non-profit making association'
    },
      {
      'question' : '5. What are the Form-J and Form-C business documents?',
       'answer' : 'Form J - It is copy of the list of director, alternate directors, manager, secretaries and auditors\n Form C - It is an annual return of a company share capital'
    },
      {
      'question' : '6. How must does it cost to regrister Form C and Form J business Documents?',
       'answer' : 'Form-J = E150,\n Form-C = E70'
    },
     {
      'question' : '7. What is the process of regristering for a trading licence?',
       'answer' : 'Fill in application form - advertisement of licences(E50) - Hearing and approval - trading license fee payment and issuing of license same day'
    },
      {
      'question' : '8. How much does it cost to regrister a business trading license?',
       'answer' : 'Advertisement - E50,\n Cost of Trading license - E250 to E2 500(see list of cost of license)'
    },
      {
      'question' : '9. Types of trading licenses and cost of yearly renewal costs?',
       'answer' : 'enter list here'
    },
    {
      'question' : '10. Can I regrister for trading license if I have an informal business?',
       'answer' : 'Yes, if your business fall under the informal sector. The following a list of informal business;\n -Barber\n -Cobbler\n - Dealer or speculator in livestock\n -Dealer in farm produce\n - Breakdown services\n - Hawker\n - Pedlar\n - Vendors cart\n - Shoe cart\n - Blacksmith or farmer\n - Street photographer\n - Dealer in mobile phone spaza\n - Dealer in phone spaza\n - Car wash'
    },
    {
      'question' : 'What are the requirement for liqour license in urban/private property?',
       'answer' : 'enter list here'
    },
    {
      'question' : 'What are the requirement for liqour license in rural areas?',
       'answer' : 'enter list here'
    }
    
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.indigo.shade900,
            title: Text("Regristrar of Companies FAQs",
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