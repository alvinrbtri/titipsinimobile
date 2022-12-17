import 'package:flutter/material.dart';
import 'package:tititpsini1/home/Homepage.dart';
import 'package:tititpsini1/sign/RegisterVendor.dart';
import 'package:tititpsini1/sign/register.dart';
import 'package:tititpsini1/sign/signin.dart';
import 'package:tititpsini1/sign/widgets/button.global.dart';
import 'package:tititpsini1/sign/widgets/text.form.global.dart';
import 'package:tititpsini1/vendor/Home.dart';

class LoginVendorPage extends StatelessWidget {
  LoginVendorPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/loginven.png',
                height: 333,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Masuk Vendor",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 17,
              ),
              TextFormGlobal(
                  controller: emailController,
                  text: 'Masukkan Email Anda',
                  obscure: false,
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 25),
              TextFormGlobal(
                  controller: passwordController,
                  text: 'Masukkan Password Anda.....',
                  obscure: true,
                  textInputType: TextInputType.visiblePassword),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Text(
                  "Masuk",
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
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
              'Belum Punya Akun ?',
              style: TextStyle(fontFamily: "Poppins"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterVendorPage();
                }));
              },
              child: Text(
                "Daftar Disini",
                style: TextStyle(color: Colors.green, fontFamily: "Poppins"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
