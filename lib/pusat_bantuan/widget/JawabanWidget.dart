import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tititpsini1/pusat_bantuan/Jawaban.dart';

class JawabanWidget extends StatelessWidget {
  const JawabanWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(bottom: 20, left: 30, right: 30),
        children: [
          Text(
            "Bagaimana cara membayar pesanan ?",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text.rich(
              TextSpan(
                text: "Untuk membayar pesanan dengan Transfer Bank, pilih ",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                ),
                children: [
                  TextSpan(
                    text: "Metode Pembayaran ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 16),
                  ),
                  TextSpan(text: "> pada halaman "),
                  TextSpan(
                    text: "Detail Pemesanan ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 16),
                  ),
                  TextSpan(text: "pilih "),
                  TextSpan(
                    text: "Transfer Bank ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 16),
                  ),
                  TextSpan(text: "> pilih "),
                  TextSpan(
                    text: "Bank yang kamu gunakan ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 16),
                  ),
                  TextSpan(text: "> pilih "),
                  TextSpan(
                    text: "Konfirmasi ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 16),
                  ),
                  TextSpan(text: "> pilih "),
                  TextSpan(
                    text: "Bayar Sekarang ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 16),
                  ),
                  TextSpan(
                      text:
                          "> lakukan pembayaran mengikuti petunjuk transfer yang tertera sesuai dengan metode pembayaran yang dipilih"),
                ],
              ),
              textAlign: TextAlign.justify),
          Row(
            children: [
              Text(
                "1.",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 20),
              Image.asset(
                "assets/images/metod.png",
                height: 200,
                width: 200,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "2.",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 20),
              Image.asset(
                "assets/images/metod1.png",
                height: 200,
                width: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
