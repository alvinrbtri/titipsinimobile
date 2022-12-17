import 'package:flutter/material.dart';

class DPemesananKendaraanPage extends StatefulWidget {
  @override
  State<DPemesananKendaraanPage> createState() =>
      _DPemesananKendaraanPageState();
}

class _DPemesananKendaraanPageState extends State<DPemesananKendaraanPage> {
  @override
  Widget build(BuildContext context) {
    bool BRI = false;
    bool BNI = false;
    bool Mandiri = false;
    bool BCA = false;
    bool COD = false;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Pemesanan",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(2, 5, 10, 2),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Pepi Wijaya",
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    "(Rumah)",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, bottom: 8),
            child: Row(
              children: [
                Text(
                  "089681902867",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, bottom: 10, right: 30),
            child: Text(
              "Jln Pandega Maharsi No.58, Manggung, Catur Tunggal, Kec.Depok, Kab.Sleman, Daerah Istimewa Yogyakarta 55281",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 13,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 20,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/kendaraan/1.jpg",
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pepi Penitipan",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    Text(
                      "Qty: 1x | Penitipan: 4 Hari",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Subtotal Layanan : Rp 35.000",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Tanggal Masuk",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 130),
                  child: Text(
                    "Selasa, 15/11/2022",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Tanggal Keluar",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 130),
                  child: Text(
                    "Jumat, 18/11/2022",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(2, 20, 10, 2),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Pick Up",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 222),
                  child: Text(
                    "Pilih Pick Up",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(2, 35, 10, 1),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Detail Pembayaran",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Sub Total",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Text(
                    "Rp 35.000 x 4",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Biaya Penjemputan",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text(
                    "Rp 0",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Kode Unik",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 245),
                  child: Text(
                    "Rp 851",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Total Pembayaran",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 115),
                  child: Text(
                    "Rp 155.000.851",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 28),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Metode Pembayaran",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 115),
                  child: Text(
                    "Pilih Metode",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 200,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return Wrap(
                          children: [
                            // BAGIAN MODAL
                            Container(
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40))),
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 5, bottom: 60, left: 45, right: 45),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // JARAK
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "Metode Pembayaran",
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Center(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Image.asset(
                                                "assets/images/cross.png",
                                                height: 30,
                                                width: 30,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Transfer Bank",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                      Divider(
                                        thickness: 1,
                                        color: Colors.green,
                                      ),
                                      CheckboxListTile(
                                        title: Text(
                                          "Bank BRI",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16),
                                        ),
                                        value: BRI,
                                        activeColor: Colors.deepPurpleAccent,
                                        onChanged: (value) {
                                          setState(() {
                                            BRI = value!;
                                          });
                                        },
                                      ),

                                      CheckboxListTile(
                                        title: Text(
                                          "Bank BNI",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16),
                                        ),
                                        value: BNI,
                                        activeColor: Colors.deepPurpleAccent,
                                        onChanged: (value) {
                                          setState(() {
                                            BNI = value!;
                                          });
                                        },
                                      ),
                                      CheckboxListTile(
                                        title: Text(
                                          "Bank Mandiri",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16),
                                        ),
                                        value: Mandiri,
                                        activeColor: Colors.deepPurpleAccent,
                                        onChanged: (value) {
                                          setState(() {
                                            Mandiri = value!;
                                          });
                                        },
                                      ),
                                      CheckboxListTile(
                                        title: Text(
                                          "Bank Bank Central Asia",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16),
                                        ),
                                        value: BCA,
                                        activeColor: Colors.deepPurpleAccent,
                                        onChanged: (value) {
                                          setState(() {
                                            BCA = value!;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Metode lain",
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(
                                        thickness: 1,
                                        color: Colors.green,
                                      ),

                                      CheckboxListTile(
                                        title: Text(
                                          "Bayar di tempat (COD)",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16),
                                        ),
                                        value: COD,
                                        activeColor: Colors.deepPurpleAccent,
                                        onChanged: (value) {
                                          setState(() {
                                            COD = value!;
                                          });
                                        },
                                      ),

                                      Divider(
                                        thickness: 1,
                                        color: Colors.green,
                                      ),

                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, "pembayaranPage");
                                        },
                                        child: Text(
                                          "konfirmasi",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      });
                    });
              },
              child: Text(
                "Bayar Sekarang",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
