import 'package:flutter/material.dart';
import 'package:mail_app/mails.dart';
import 'package:mail_app/drawer.dart';
import 'package:mail_app/contacts.dart';
import 'package:mail_app/personalProfile.dart';
import 'data_model/mailsModel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int navBarIndex = 0;
  @override
  Widget build(BuildContext context) {

    List<Widget> body = [

      //page 1
      Center(
        child: ListView.builder(
       itemCount: Mails().emails.length,
       itemBuilder: (context,i) => mailswidgets(i)
        ),
      ),

      //page 2
      Center(
        child: ListView(
        padding: EdgeInsets.all(15.0),
       children: [
         contacts('Mustafa Slama', '+20 117 589 8989', "slama@gmail.com"),
         contacts('Olivia Liam', '+20 117 589 8989', "Olivia@gmail.com"),
         contacts('Emma Noah', '+20 117 589 8989', "Emma@gmail.com"),
         contacts('Adel Shakal', '+20 117 589 8989', "shakal@gmail.com"),
         contacts('Fady Adalat', '+20 117 589 8989', "dumpAsFu**@gmail.com"),
         contacts('مرن ببل', '+20 117 589 8989', "marwan@gmail.com"),

       ],
        ),
      ),

      //page 3
      pprofile(),

    ];

    return Scaffold(
      
      backgroundColor:  Colors.grey.shade900,

      appBar: AppBar(
        title: Text('بريدي', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.grey.shade200,
        iconTheme: IconThemeData(color: Colors.green),
      ),


      drawer: Drawer(
        child: drawerprofile(),
      ),
       bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        backgroundColor: Colors.grey.shade200,
        selectedItemColor: Colors.green,
        currentIndex: navBarIndex,
         onTap: (index){
          setState(() {
            navBarIndex = index;
          });
         },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_sharp),
            label: 'الوارد',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'جهات الاتصال',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'صفحتي',
          ),
        ],
      
      ),
      
       body: body[navBarIndex],
    );
  }
}
