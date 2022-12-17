import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tititpsini1/alamat/widget/TambahAlamatPage.dart';

class Tambah extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alamat",
          style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: TambahAlamatPage(),
      )
    );
  }
}