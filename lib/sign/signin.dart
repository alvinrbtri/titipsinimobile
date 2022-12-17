import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tititpsini1/sign/login.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                        hintText: "info@example.com",
                        labelText: "Email",
                        icon: Icon(Icons.email_rounded))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "No telepon",
                        labelText: "No telepon",
                        icon: Icon(Icons.phone_android_rounded))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Kota/Kabupaten",
                        labelText: "Kota/Kabupaten",
                        icon: Icon(Icons.location_city_rounded))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Kecamatan",
                        labelText: "Kecamatan",
                        icon: Icon(Icons.wb_shade_rounded))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Kelurahan/Desa",
                        labelText: "Kelurahan/Desa",
                        icon: Icon(Icons.cottage_rounded))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Password",
                        labelText: "Password",
                        icon: Icon(Icons.lock))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Konfirmasi Password",
                        labelText: "Konfirmasi Password",
                        icon: Icon(Icons.password_rounded))),
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
                        labelText: "Catatan Alamat",
                        icon: Icon(Icons.my_location_sharp))),
                SizedBox(
                  height: 18,
                ),
                TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
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
