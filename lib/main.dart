import 'package:flutter/material.dart';
import 'package:tititpsini1/layanan/BangunanPage.dart';
import 'package:tititpsini1/layanan/BarangPage.dart';
import 'package:tititpsini1/layanan/KendaraanPage.dart';
import 'package:tititpsini1/layanan/detail/DBangunanPage.dart';
import 'package:tititpsini1/layanan/detail/DBarangPage.dart';
import 'package:tititpsini1/layanan/detail/DKendaraanPage.dart';
import 'package:tititpsini1/onboarding_screen.dart';
import 'package:tititpsini1/pemesanan/HistoryOnPage.dart';
import 'package:tititpsini1/pemesanan/KonfirmasiPembayaranPage.dart';
import 'package:tititpsini1/pemesanan/PembayaranPage.dart';
import 'package:tititpsini1/profile/ProfilePage.dart';
import 'package:tititpsini1/pemesanan/DPemesananKendaraanPage.dart';
import 'package:tititpsini1/sublayanan/widget/SubLayananWidget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      routes: {
        "profilePage" :(context) => ProfilePage(),
        "kendaraanPage" :(context) => KendaraanPage(),
        "dkendaraanPage" :(context) => DKendaraanPage(),
        "barangPage" :(context) => BarangPage(),
        "bangunanPage" :(context) => BangunanPage(),
        "dPemesananKendaraanPage" : (context) => DPemesananKendaraanPage(),
        "pembayaranPage" : (context) => PembayaranPage(),
        "konfirmasiPembayaranPage" : (context) => KonfirmasiPembayaranPage(),
        "historyOnPage" : (context) => HistoryOnPage(),
        "dbarangPage" : (context) => DBarangPage(),
        "dbangunanPage" : (context) => DBangunanPage(),
        "sublayananWidget" : (context) => SubLayananWidget(),

      },
    );
  }
}
