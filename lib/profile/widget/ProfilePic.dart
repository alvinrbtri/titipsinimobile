import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tititpsini1/profile/edit.dart';
import 'package:tititpsini1/sign/register.dart';

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/team-1.jpg"),
            ),
            SizedBox(height: 10),
            Text(
              'Pepi Wijaya',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'user@gmail.com',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 400,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(201, 35, 153, 88),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EditProfPage();
                    }
                  )
                );
                },
                child: Text(
                  "Update Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins"
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
