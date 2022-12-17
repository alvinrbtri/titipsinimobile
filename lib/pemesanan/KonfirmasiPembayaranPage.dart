import 'package:flutter/material.dart';

class KonfirmasiPembayaranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Konfirmasi Pembayaran",
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 70, bottom: 20, left: 30, right: 30),
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Pembayaran Anda Berhasil",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Terimakasih atas kepercayaannyakepada Titipsini.com \nLayanan Anda akan kami proses secepatnya",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2, bottom: 3),
                  child: Text(
                    "Informasi",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 22,
                ),
                child: Text("Tanggal Pembayaran   : ",
                 style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),),
              ),
              Spacer(),
              Text(" 20 November 2022",
               style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),)
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 22,
                ),
                child: Text("ID Pembayaran               : ",
                 style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),),
              ),
              Spacer(),
              Text("182089681902876",
               style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),)
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 22,
                ),
                child: Text(
                  "Pembayaran dari Bank :",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),
                ),
              ),
              Spacer(),
              Text(
                " Bank Central Asia",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 22,
                ),
                child: Text(
                  "Rekening Tujuan             :",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),
                ),
              ),
              Spacer(),
              Text(
                "Bank Republik Indonesia",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 22,
                ),
                child: Text(
                  "Total Pembayaran     : ",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 17,
                  ),
                ),
              ),
              Spacer(),
              Text(
                " Rp. 241.000",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 17,
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "sublayananWidget");
            }, 
            child: Text(
              "Pesan Lagi",
              style: TextStyle(
                fontFamily: "Poppins"
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
            ),
          ),
          SizedBox(
            height: 7,
          ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "historyOnPage");
              }, 
              child: Text(
                "Pesanan Saya",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins"
                ),
              ),
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade50
              ),
            )
        ],
      ),
    );
  }
}
