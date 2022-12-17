import 'package:flutter/material.dart';

class PembayaranPage extends StatelessWidget {
  final List metodePembayaran = [
    'BCA',
    'BRI',
    'BNI',
    'Mandiri',
  ];

  String? selectedValue;

  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pembayaran",
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 65, bottom: 20, left: 30, right: 30),
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Menunggu Pembayaran",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 18,
                ),
                Text.rich(
                    TextSpan(
                        text: "Mohon selesaikan pembayaran Anda sebelum ",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                        ),
                        children: [
                          TextSpan(
                              text: "23 Desember 2022 23.59 WIB ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  fontSize: 15)),
                          TextSpan(
                              text:
                                  "Layanan akan otomatis dibatalkan apabila Anda tidak melakukan pembayaran lebih dari waktu yang ditentukan")
                        ]),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "01 : 00",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  "Total Pembayaran",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Rp. 155.000.851",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 22),
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                      text:
                          "jika jumlah yang ditransfer tidak sesuai dengan proses verifikasi pembayaran Anda, nanti akan terhambat. ",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 13,
                      ),
                      children: [
                        TextSpan(
                            text:
                                "Harap transfer sesuai jumlah pembayaran hingga digit terakhir ",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold))
                      ]),
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  "assets/images/abc1.png",
                  height: 200,
                  width: 200,
                ),
                Text(
                  "86 000 442 79 00",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Atas nama : Pepi Penitipan",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
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
                                          top: 5,
                                          bottom: 60,
                                          left: 45,
                                          right: 45),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
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
                                                    "Konfirmasi Pembayaran",
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                            "Bank Tujuan",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Form(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 30, vertical: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  DropdownButtonFormField(
                                                    decoration: InputDecoration(
                                                        isDense: true,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                top: 5,
                                                                left: 20,
                                                                right: 10,
                                                                bottom: 5),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(7),
                                                        ),
                                                        focusColor:
                                                            Colors.green),
                                                    isExpanded: true,
                                                    hint: Text(
                                                      "Pilih Bank yang akan dituju",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "Poppins"),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.green,
                                                    ),
                                                    iconSize: 30,
                                                    items: metodePembayaran
                                                        .map((item) =>
                                                            DropdownMenuItem<
                                                                String>(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        "Poppins"),
                                                              ),
                                                            ))
                                                        .toList(),
                                                    validator: (value) {
                                                      if (value == null) {
                                                        return "Pilih Bank tujuan terlebih dahulu.";
                                                      }
                                                    },
                                                    onChanged: (value) {},
                                                    onSaved: (value) {
                                                      selectedValue =
                                                          value.toString();
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "Total Penitipan",
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30, vertical: 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextFormField(
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.fromLTRB(
                                                            5, 20, 10, 5),
                                                    hintText:
                                                        'Total biaya penitipan',
                                                    hintStyle: const TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Poppins"),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 33,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pushNamed(context, "konfirmasiPembayaranPage");
                                                  },
                                                  child: Text(
                                                    "Konfirmasi Pembayaran",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.green),
                                                )
                                              ],
                                            ),
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
                    "Konfirmasi Pembayaran",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 18),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
