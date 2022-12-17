import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tititpsini1/pusat_bantuan/Jawaban.dart';

class PusatWidget extends StatelessWidget {
  const PusatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(bottom: 20, left: 30, right: 30),
        children: [
          Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Jawaban();
                      }));
                    },
                    child: Text(
                      'Apa itu titipsini.com ?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Jawaban();
                      }));
                    },
                    child: Text(
                      'Bagaimana Cara Membayar ?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Bagaimana Cara melihat profile saya ?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Bagaimana cara membuat pesanan ?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Kenapa saya tidak menerima OTP ?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
