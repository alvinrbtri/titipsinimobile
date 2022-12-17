import 'package:flutter/material.dart';
import 'package:tititpsini1/sublayanan/SubLayananPage.dart';

class SubLayananWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.62,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 19; i++)
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
                      color: Colors.green
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "profilePage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/sublyanan/$i.jpg",
                    height: 140,
                    width: 140,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Pepi Penitipan",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rp. 35.000/hari",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Poppins",
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jl. Perkutut Gg Rumah Pengadilan",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins",
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(bottom: 7),
                alignment: Alignment.centerLeft,
                child: Text(
                  "1.4 Km",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins",
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
