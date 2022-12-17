import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tititpsini1/home/widget/HomeAppBar.dart';

class DBarangPage extends StatefulWidget {
  @override
  State<DBarangPage> createState() => _DBarangPageState();
}

class _DBarangPageState extends State<DBarangPage> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateout = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
    dateout.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: ListView(
        children: [
          HomeAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "assets/images/barang/1.jpg",
              height: 240,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 20,
            child: Container(
              width: double.infinity,
              height: 400,
              color: Colors.green.shade100,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Pepi Penitipan",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 18,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "1.4 Km",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Tersedia",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Deskripsi Layanan",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Text(
                          "Kategori : layanan kendaraan roda 4 \nAlamat : Jln Perkutut Raya Gg Rumah Pengadilan No 1",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.green),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Text(
                          "Layanan penitipan kendaraan roda 2 dari Pepi Penitipan dengan, spesifikasi layanan :\n- Free cuci kendaraan. \n- Kontrol mesin. \n- Keamanan terjaga. \n- Konsultasi & support. \n- Kendaraan dibersihkan setiap pagi",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              height: 50,
              child: ElevatedButton(
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
                                          topRight: Radius.circular(40),
                                          topLeft: Radius.circular(40))),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        top: 10,
                                        bottom: 60,
                                        left: 60,
                                        right: 30),
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
                                                  "Form Pesanan",
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                ),
                                                Text(
                                                  "Atur Pemesanan",
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 20,
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
                                          height: 25,
                                        ),

                                        // Quantity
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5),
                                                              spreadRadius: 1,
                                                              blurRadius: 10),
                                                        ]),
                                                    child: Icon(
                                                      CupertinoIcons.plus,
                                                      size: 18,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                    child: Text(
                                                      "01",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.green),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5),
                                                              spreadRadius: 1,
                                                              blurRadius: 10),
                                                        ]),
                                                    child: Icon(
                                                      CupertinoIcons.minus,
                                                      size: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Tanggal Masuk
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text(
                                            "Tanggal masuk",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 17,
                                                color: Colors.green),
                                          ),
                                        ),

                                        // Form Date
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7,
                                          ),
                                          // padding: EdgeInsets.all(7),
                                          child: Center(
                                            child: TextField(
                                              controller: dateinput,
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons
                                                      .calendar_month_outlined),
                                                  labelText: "Enter Date",
                                                  focusColor: Colors.green,
                                                  prefixIconColor: Colors.green,
                                                  fillColor: Colors.green,
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.greenAccent),
                                                  )),
                                              readOnly: true,
                                              onTap: () async {
                                                DateTime? pickedDate =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(2000),
                                                  lastDate: DateTime(2101),
                                                );
                                                if (pickedDate != null) {
                                                  print(pickedDate);
                                                  String formattedDate =
                                                      DateFormat.yMMMEd()
                                                          .format(pickedDate);
                                                  print(formattedDate);

                                                  setState(() {
                                                    dateinput.text =
                                                        formattedDate;
                                                  });
                                                } else {
                                                  print("Date is not selected");
                                                }
                                              },
                                            ),
                                          ),
                                        ),

                                        // Tanggal Keluar
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            "Tanggal keluar",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 17,
                                                color: Colors.green),
                                          ),
                                        ),

                                        // Form Date
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Center(
                                            child: TextField(
                                                controller: dateout,
                                                decoration: InputDecoration(
                                                  icon: Icon(Icons
                                                      .calendar_month_outlined),
                                                  labelText: "Masukkan Tanggal",
                                                  focusColor: Colors.green,
                                                  prefixIconColor: Colors.green,
                                                  fillColor: Colors.green,
                                                ),
                                                readOnly: true,
                                                onTap: () async {
                                                  DateTime? pickedDate =
                                                      await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate:
                                                              DateTime(1800),
                                                          lastDate:
                                                              DateTime(2101));
                                                  if (pickedDate != null) {
                                                    print(pickedDate);
                                                    String formattedDate =
                                                        DateFormat.yMMMEd()
                                                            .format(pickedDate);
                                                    print(formattedDate);

                                                    setState(() {
                                                      dateout.text =
                                                          formattedDate;
                                                    });
                                                  } else {
                                                    print(
                                                        "date is not selected");
                                                  }
                                                }),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            "Catatan",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 17,
                                                color: Colors.green),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(7),
                                          child: Center(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.note_alt),
                                                labelText:
                                                    "Tinggalkan Catatan untuk vendor",
                                                focusColor: Color.fromARGB(
                                                    255, 6, 19, 7),
                                                prefixIconColor: Colors.green,
                                                fillColor: Colors.green,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 3,
                                          ),

                                          // padding: const EdgeInsets.all(3),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pushNamed(context,
                                                  "dPemesananKendaraanPage");
                                            },
                                            child: Text(
                                              "Pesan Sekarang",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
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
                  "Pesan disini",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          
        ],
      ),
    );
  }
}
