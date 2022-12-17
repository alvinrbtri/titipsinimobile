import 'package:flutter/material.dart';
import 'package:tititpsini1/sign/LoginVendor.dart';
import 'package:tititpsini1/sign/signin.dart';

class IntroPage3 extends StatelessWidget {
  // controller to keep track of which page were on
  PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
            ListView(padding: EdgeInsets.fromLTRB(50, 40, 30, 50), children: [
          Text(
            "Kami tersedia di berbagai \nKota Indonesia ...",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 24, fontFamily: "Poppins"),
          ),
          Text(
            " Yuk Titip Sini aja !",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 36,
                color: Colors.green,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/landing_page3.png',
            height: 333,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 255,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
                onPressed: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) {
                    return SignIn();
                  }));
                },
                child: Text(
                  "Daftar sekarang",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: "Poppins"
                  ),
                ),
              ),
              
            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    
                    style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
                    onPressed: () {
                      Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) {
                        return LoginVendorPage();
                      }));
                    },
                    child: Text(
                      "Daftar Vendor",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: "Poppins"
                      ),
                    ),
                  ),
                ],
              ),
        ]));
  }
}
