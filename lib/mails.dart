import 'package:flutter/material.dart';
import 'package:mail_app/data_model/mailsModel.dart';

class mailswidgets extends StatelessWidget {

  final int index;

   mailswidgets(this.index);
  

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(bottom: 20.0, top: 5),
     decoration: BoxDecoration(
       color: Colors.grey.shade200,
     ),
    child: Column(
      children: [

       Row(
         children: [
           Icon(Icons.account_circle,),
           Text('sender name')
         ],
       ),

       Container(
         padding: EdgeInsets.all(16.0),
         child: Text(Mails().emails[index] )),
      ],
    ), 
    
    );
  }
}
