import 'package:flutter/material.dart';
import 'package:tititpsini1/layanan/BarangPage.dart';

class BarangWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.63,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 6; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Tersedia",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "dbarangPage");
                },
                child: Container(
                  child: Image.asset(
                    "assets/images/barang/$i.jpg",
                    height: 140,
                    width: 140,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 7),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Pepi Penitipan",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rp. 35.000/hari",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jl. Perkutut Gg Rumah Pengadilan",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "1.8 Km",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
