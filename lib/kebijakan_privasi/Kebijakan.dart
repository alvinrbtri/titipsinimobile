import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tititpsini1/kebijakan_privasi/widget/KebijakanWidget.dart';

class Kebijakan extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kebijakan Privasi",
          style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: KebijakanWidget(),
      )
    );
  }
}