import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tititpsini1/sign/login.dart';

class LengkapiDataVendor extends StatefulWidget {
  const LengkapiDataVendor({super.key});

  @override
  State<LengkapiDataVendor> createState() => _LengkapiDataVendorState();
}

class _LengkapiDataVendorState extends State<LengkapiDataVendor> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Lengkapi Data Diri',
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Lengkapi data diri untuk mempercepat verifikasi',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Colors.green.shade800,
                  ),
                ),
                Text(
                  'Kami melindungi informasi dan penggunaan data diri yang telah anda kirimkan untuk kenyaman pengguna.',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.green.shade800,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "masukkan nama lengkap Anda",
                        labelText: "Nama Lengkap",
                        icon: Icon(Icons.account_circle_rounded))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Masukkan tanggal lahir Anda",
                        labelText: "Tanggal lahir",
                        icon: Icon(Icons.date_range_rounded))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "No KTP",
                        labelText: "No KTP",
                        icon: Icon(Icons.credit_card))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Alamat",
                        labelText: "Alamat Lengkap",
                        icon: Icon(Icons.location_on))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Catatan Alamat",
                        labelText: "Masukan Lokasi sesuai link maps",
                        icon: Icon(Icons.my_location_sharp))),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Lampirkan Dokumen Pendukung",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Scan KTP dan KK",
                        labelText: "Masukan scan ktp dan kk",
                        icon: Icon(Icons.credit_card_rounded))),
                SizedBox(
                  height: 18,
                ),
                TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text("Akun sedang diproses, tunggu yaa!"),
                        icon: Image.asset("assets/images/wait.png"),
                      ),
                      anchorPoint: Offset(1000, 1000),
                    );
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
