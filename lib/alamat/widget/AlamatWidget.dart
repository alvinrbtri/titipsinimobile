import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:tititpsini1/alamat/Tambah.dart';

class AlamatWidget extends StatelessWidget {
  const AlamatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: GestureDetector(
            child: ListView(
          children: [
            Text(
              "Alamat saya",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 20, 10, 2),
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
              padding: EdgeInsets.only(left: 35, bottom: 10, right: 15),
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
            Container(
              padding: EdgeInsets.only(left: 35, bottom: 10, right: 15),
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(201, 35, 153, 88)),
                onPressed: () {},
                child: Text(
                  "Ubah Alamat",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 20, 10, 2),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Alvi Nurbaetri",
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
                      "(Kosan)",
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
              padding: EdgeInsets.only(left: 35, bottom: 10, right: 15),
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
            Container(
              padding: EdgeInsets.only(left: 35, bottom: 10, right: 15),
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(201, 35, 153, 88)),
                onPressed: () {},
                child: Text(
                  "Ubah Alamat",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 20, 10, 2),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Silubun Fam",
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
              padding: EdgeInsets.only(left: 35, bottom: 10, right: 15),
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
            Container(
              padding: EdgeInsets.only(left: 35, bottom: 10, right: 15),
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(201, 35, 153, 88)),
                onPressed: () {},
                child: Text(
                  "Ubah Alamat",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            SizedBox(height: 150),
            Container(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(201, 35, 153, 88),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Tambah();
                  }));
                },
                child: Text(
                  "Tambah Alamat",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
