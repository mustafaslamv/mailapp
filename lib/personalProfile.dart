import 'package:flutter/material.dart';
import 'package:mail_app/drawer.dart';

class pprofile extends StatefulWidget {
  @override
  _pprofileState createState() => _pprofileState();
}

class _pprofileState extends State<pprofile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.teahub.io/photos/full/89-895539_nature-green-aesthetic-background.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            top: 125,
            left: 125,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,
                width: 5),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://res.cloudinary.com/fleetnation/image/upload/c_fill,g_center,h_400,w_400/v1578425136/ri4h6bqo8osprre5ljaj.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Positioned(
              top: 300,
              left: 80,
              child: Column(
                children: [

                  profileData('Mustafa Slama'),
                  profileData('+201060186263'),
                  profileData('ayman1slama@gmail.com'),
                ],
              ))
        ],
      ),
    );
  }
}

class profileData extends StatelessWidget {
  final String data;
  const profileData(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 250.0,
      height: 60.0,
      decoration: BoxDecoration(
          color:   Colors.grey.shade900,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Center(
        child: Text(
          // it will be replaced with profile username
          data,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
