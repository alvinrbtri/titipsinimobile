import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TentangWidget extends StatelessWidget {
  const TentangWidget({
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
                Text.rich(
                    TextSpan(
                      text: "Layanan penitipan ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                      children: [
                        TextSpan(
                            text: "PERTAMA ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 53, 129, 55),
                                fontFamily: "Poppins",
                                fontSize: 18)),
                        TextSpan(
                          text:
                              "di Indonesia yang terdaftar dan telah dipercaya kredibilitasnya",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center),
                    SizedBox(height: 20,),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
