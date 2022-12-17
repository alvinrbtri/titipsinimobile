import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.fromLTRB(50, 40, 30, 50),
          children: [
            Text(
              "Bukan hanya",
              style: TextStyle(fontSize: 24, fontFamily: "Poppins"),
            ),
            Text(
              "barang, rumah \ndan kendaan",
              style: TextStyle(
                  fontSize: 24, color: Colors.green, fontFamily: "Poppins"),
            ),
            
            Text(
              "pun bisa \npakai jasa kami.",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Poppins",
              ),
            ),
            
            Image.asset(
              'assets/images/landing_page2.png',
              alignment: Alignment.topCenter,
              height: 380,
              width: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
