import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.fromLTRB(50, 40, 30, 50),
          children: [
            Text(
              "Bingung mau nitip \nbarang dimana???",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 24,
              fontFamily: "Poppins"),
            ),
            Text(
              "Titip Sini aja !",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 36,
                color: Colors.green,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/landing_page1.png',
              height: 333,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
