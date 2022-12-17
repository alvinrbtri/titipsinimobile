import 'package:flutter/material.dart';
import 'package:tititpsini1/home/Homepage.dart';
import 'package:tititpsini1/sign/LengkapiDataVendor.dart';
import 'package:tititpsini1/sign/login.dart';
import 'package:tititpsini1/sign/signin.dart';
import 'package:tititpsini1/sign/widgets/button.global.dart';

import 'package:tititpsini1/sign/widgets/text.form.global.dart';

class RegisterVendorPage extends StatelessWidget {
  RegisterVendorPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController teleponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Image.asset(
                'assets/images/registerven.png',
                height: 333,
                fit: BoxFit.fill,
              ),
              Text(
                'Register',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
              const SizedBox(height: 20),
              TextFormGlobal(
                  controller: namaController,
                  text: 'Nama',
                  obscure: false,
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 20),
              TextFormGlobal(
                  controller: teleponController,
                  text: 'No Telp',
                  obscure: false,
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 20),
              TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 20),
              TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  obscure: true,
                  textInputType: TextInputType.text),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LengkapiDataVendor();
                }));
                }, 
                child: Text(
                  "Lengkapi Data Diri",
                  style: TextStyle(
                    fontFamily: "Poppins"
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),)
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah Punya Akun ?',
              style: TextStyle(fontFamily: "Poppins"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Text(
                "Masuk Disini",
                style: TextStyle(color: Colors.green, fontFamily: "Poppins"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
