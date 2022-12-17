import 'package:flutter/material.dart';
import 'package:tititpsini1/home/Homepage.dart';
import 'package:tititpsini1/sign/register.dart';
import 'package:tititpsini1/sign/signin.dart';
import 'package:tititpsini1/sign/widgets/button.global.dart';

import 'package:tititpsini1/sign/widgets/text.form.global.dart';

class LoginPage extends StatelessWidget{
  LoginPage({Key? key}) : super(key: key);
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
                  'assets/images/login.png',
                  height: 333,
                  fit: BoxFit.fill,
                ),
                
                TextFormGlobal(
                    controller: emailController, 
                    text: 'Masukkan Email Anda' ,
                    obscure: false, 
                    textInputType: TextInputType.emailAddress
                  ),
                const SizedBox(height: 30),
                TextFormGlobal(
                    controller: passwordController, 
                    text: 'Masukkan Password Anda', 
                    obscure: true, 
                    textInputType: TextInputType.visiblePassword
                  ),
                const SizedBox(height: 30),
                ButtonGlobal(), 
              ],
            ),
          )
        ),
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
              style: TextStyle(
                fontFamily: "Poppins"
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                    }
                  )
                );
              }, 
              child: Text(
                "Daftar Disini",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: "Poppins"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}