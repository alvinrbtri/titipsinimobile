import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class AppBarVendor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Pepi Penitipan",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "profileVendorPage");
            },
            child: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            ),
          ),
          
        ],
      ),
    );
  }
}