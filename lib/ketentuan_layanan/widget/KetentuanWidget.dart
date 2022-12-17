import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KetentuanWidget extends StatelessWidget {
  const KetentuanWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Ketentuan Penggunaan Aplikasi Titipsini.com",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                  height: 18,
                ),
                Text(
                  "Mulai dari 5 November 2021",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                  height: 18,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,),
                  ),
                  SizedBox(
                  height: 18,
                  ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,),
                  ),
                  SizedBox(
                  height: 18,
                  ),
                  Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,),
                  ),
                  SizedBox(
                  height: 18,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}