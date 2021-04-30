import 'package:flutter/material.dart';

class drawerprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
            colors: [Colors.green, Colors.greenAccent],
          ),
        ),


        child: Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Icon(
                  // it will be replaced with profile picture
                  Icons.account_circle,
                  size: 150.0,
                  color : Colors.white,
                ),
              ),

              
              Databox('مصطفي سلامه'),
              Databox('+201060186263'),            
              Databox('ayman1slama@gmail.com'),

            ],
          ),
        ),
      ),
    );
  }
}

class Databox extends StatelessWidget {
  String data;
  Databox(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 250.0,
      height: 50.0,
      decoration: BoxDecoration(
        color : Colors.white,
         borderRadius: BorderRadius.all(Radius.circular(20))
      ),

      child: Center(
        child: Text(
          // it will be replaced with profile username
          data,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
