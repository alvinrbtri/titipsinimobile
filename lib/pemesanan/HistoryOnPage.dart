import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

class HistoryOnPage extends StatefulWidget {
  @override
  State<HistoryOnPage> createState() => _HistoryOnPageState();
}

class _HistoryOnPageState extends State<HistoryOnPage> {
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
      appBar: AppBar(
        title: Text(
          "History",
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Penitipan Berlangsung",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Penitipan Selesai",
                  style: TextStyle(fontFamily: "Poppins", color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade50),
              )
            ],
          ),
          SizedBox(
            height: 43,
          ),
          Card(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/kendaraan/1.jpg",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  width: 26,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pepi Penitipan",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Qty : 1x | Penitipan : 4 Hari",
                        style: TextStyle(fontFamily: "Poppins"),
                      ),
                      Text(
                        "Subtotal Layanan : Rp 35.000",
                        style: TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Lihat Detail Transaksi >>"))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 13,
              bottom: 20,
              right: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
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
                                        top: 5, left: 45, right: 45),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 13,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "Detail Penitipan",
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 25,
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
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/centang.png",
                                              height: 60,
                                              width: 60,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Card(
                                          color: Colors.green[200],
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ListTile(
                                                leading: Icon(Icons.check),
                                                title: Text(
                                                    "Pembayaran Telah Berhasil !!",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins"
                                                    ),),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 9,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 22,
                                              ),
                                              child: Text(
                                                "ID Transaksi                    : ",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " Order M-012912811288",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 22,
                                              ),
                                              child: Text(
                                                "Waktu                              : ",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " 25-11-2022 11.30.29",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 22,
                                              ),
                                              child: Text(
                                                "Metode Pembayaran   :",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " Transfer Bank BRI",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 9,
                                        ),
                                        Card(
                                          color: Colors.green[200],
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 7,
                                                bottom: 7,
                                                left: 20,
                                                right: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                  child: Image.asset(
                                                    "assets/images/kendaraan/1.jpg",
                                                    fit: BoxFit.cover,
                                                    height: 70,
                                                    width: 70,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 23,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Kendaraan roda 3",
                                                        style: TextStyle(
                                                          fontFamily: "Poppins",
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Penitipan : 4 Hari",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Poppins"),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Rp 7.000",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Text(
                                                            "x2",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                            ),
                                                            textAlign:
                                                                TextAlign.end,
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 22,
                                              ),
                                              child: Text(
                                                "Sub Total",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " Rp. 14.000",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 22,
                                              ),
                                              child: Text(
                                                "Kode unik",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " Rp.851",
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 22,
                                              ),
                                              child: Text(
                                                "Total",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              " Rp. 14.000.851",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 9,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) {
                                                      return StatefulBuilder(
                                                          builder: (BuildContext
                                                                  context,
                                                              StateSetter
                                                                  setState) {
                                                        return Wrap(
                                                          children: [
                                                            // BAGIAN MODAL
                                                            Container(
                                                              color: Colors
                                                                  .transparent,
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .green
                                                                        .shade100,
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                                40),
                                                                        topRight:
                                                                            Radius.circular(40))),
                                                                child:
                                                                    Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              60,
                                                                          left:
                                                                              45,
                                                                          right:
                                                                              45),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      SizedBox(
                                                                        height:
                                                                            25,
                                                                      ),
                                                                      Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Column(
                                                                            children: [
                                                                              Text(
                                                                                "Perpanjang Layanan",
                                                                                style: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Spacer(),
                                                                          Center(
                                                                            child:
                                                                                InkWell(
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
                                                                        height:
                                                                            17,
                                                                      ),
                                                                      Card(
                                                                        color: Colors
                                                                            .green
                                                                            .shade200,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              top: 7,
                                                                              bottom: 7,
                                                                              left: 20,
                                                                              right: 20),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(5),
                                                                                child: Image.asset(
                                                                                  "assets/images/kendaraan/1.jpg",
                                                                                  fit: BoxFit.cover,
                                                                                  height: 70,
                                                                                  width: 70,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 23,
                                                                              ),
                                                                              Expanded(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      "Kendaraan roda 3",
                                                                                      style: TextStyle(
                                                                                        fontFamily: "Poppins",
                                                                                        color: Colors.black,
                                                                                        fontSize: 16,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      "Penitipan : 4 Hari",
                                                                                      style: TextStyle(fontFamily: "Poppins"),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Text(
                                                                                          "Rp 7.000",
                                                                                          style: TextStyle(
                                                                                            fontFamily: "Poppins",
                                                                                          ),
                                                                                        ),
                                                                                        Spacer(),
                                                                                        Text(
                                                                                          "x2",
                                                                                          style: TextStyle(
                                                                                            fontFamily: "Poppins",
                                                                                          ),
                                                                                          textAlign: TextAlign.end,
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),

                                                                      // Tanggal Masuk
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.only(top: 20),
                                                                        child:
                                                                            Text(
                                                                          "Tanggal Perpanjang",
                                                                          style: TextStyle(
                                                                              fontFamily: "Poppins",
                                                                              fontSize: 17,
                                                                              color: Colors.green),
                                                                        ),
                                                                      ),

                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          top:
                                                                              7,
                                                                        ),
                                                                        // padding: EdgeInsets.all(7),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              TextField(
                                                                            controller:
                                                                                dateinput,
                                                                            decoration: InputDecoration(
                                                                                icon: Icon(Icons.calendar_month_outlined),
                                                                                labelText: "Enter Date",
                                                                                focusColor: Colors.green,
                                                                                prefixIconColor: Colors.green,
                                                                                fillColor: Colors.green,
                                                                                focusedBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(color: Colors.greenAccent),
                                                                                )),
                                                                            readOnly:
                                                                                true,
                                                                            onTap:
                                                                                () async {
                                                                              DateTime? pickedDate = await showDatePicker(
                                                                                context: context,
                                                                                initialDate: DateTime.now(),
                                                                                firstDate: DateTime(2000),
                                                                                lastDate: DateTime(2101),
                                                                              );
                                                                              if (pickedDate != null) {
                                                                                print(pickedDate);
                                                                                String formattedDate = DateFormat.yMMMEd().format(pickedDate);
                                                                                print(formattedDate);

                                                                                setState(() {
                                                                                  dateinput.text = formattedDate;
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
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          top:
                                                                              23,
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          "Tanggal Selesai",
                                                                          style: TextStyle(
                                                                              fontFamily: "Poppins",
                                                                              fontSize: 17,
                                                                              color: Colors.green),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Center(
                                                                          child: TextField(
                                                                              controller: dateout,
                                                                              decoration: InputDecoration(
                                                                                icon: Icon(Icons.calendar_month_outlined),
                                                                                labelText: "Masukkan Tanggal",
                                                                                focusColor: Colors.green,
                                                                                prefixIconColor: Colors.green,
                                                                                fillColor: Colors.green,
                                                                              ),
                                                                              readOnly: true,
                                                                              onTap: () async {
                                                                                DateTime? pickedDate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1800), lastDate: DateTime(2101));
                                                                                if (pickedDate != null) {
                                                                                  print(pickedDate);
                                                                                  String formattedDate = DateFormat.yMMMEd().format(pickedDate);
                                                                                  print(formattedDate);

                                                                                  setState(() {
                                                                                    dateout.text = formattedDate;
                                                                                  });
                                                                                } else {
                                                                                  print("date is not selected");
                                                                                }
                                                                              }),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            17,
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            ElevatedButton(
                                                                          onPressed:
                                                                              () {
                                                                            showDialog(
                                                                              context: context,
                                                                              builder: (_) => AlertDialog(
                                                                                title: Text("Penitipan Berhasil di Perpanjang!"),
                                                                                icon: Image.asset("assets/images/happy.jpeg"),
                                                                                content: Text(
                                                                                  "Untuk menyelesaikan perpanjang layanan, Anda perlu menyelesaikan pembayaran. Terimakasih karena telah percaya kami",
                                                                                  textAlign: TextAlign.justify,
                                                                                  style: TextStyle(fontFamily: "Poppins"),
                                                                                ),
                                                                              ),
                                                                              anchorPoint: Offset(1000, 1000),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Text("Perpanjang sekarang"),
                                                                          style:
                                                                              ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      });
                                                    });
                                              },
                                              child: Text(
                                                "Perpanjang Layanan",
                                                style: TextStyle(
                                                    fontFamily: "Poppins"),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.green),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: Text(
                    "Layanan selesai",
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade500),
                ),
                Spacer(),
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
                                                    "Pembatalan Penitipan",
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
                                            "Anda Yakin Membatalkan Pesanan ini?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 16),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20,
                                                bottom: 20,
                                                left: 90,
                                                right: 90),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("Tidak"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.green
                                                                  .shade700),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (_) =>
                                                          AlertDialog(
                                                        title: Text(
                                                            "Layanan berhasil dibatalkan"),
                                                        icon: Image.asset(
                                                          "assets/images/ceklis.jpeg",
                                                          width: 70,
                                                          height: 70,
                                                        ),
                                                      ),
                                                      anchorPoint:
                                                          Offset(1000, 1000),
                                                    );
                                                  },
                                                  child: Text("Iya"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.green),
                                                ),
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
                    "Batalkan Penitipan",
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
