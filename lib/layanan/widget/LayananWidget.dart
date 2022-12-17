import "package:flutter/material.dart";
import 'package:tititpsini1/layanan/KendaraanPage.dart';

class LayananWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 26),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    child: Image.asset(
                      "assets/images/layanan/1.png",
                      width: 65,
                      height: 65,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "kendaraanPage");
                    }),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 26),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    child: Image.asset(
                      "assets/images/layanan/2.png",
                      width: 65,
                      height: 65,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "barangPage");
                    }),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 26),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    child: Image.asset(
                      "assets/images/layanan/3.png",
                      width: 65,
                      height: 65,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "bangunanPage");
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
