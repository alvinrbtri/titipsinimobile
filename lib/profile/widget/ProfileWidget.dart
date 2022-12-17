import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tititpsini1/alamat/AlamatPage.dart';
import 'package:tititpsini1/kebijakan_privasi/Kebijakan.dart';
import 'package:tititpsini1/ketentuan_layanan/Ketentuan.dart';
import 'package:tititpsini1/profile/widget/ProfileMenu.dart';
import 'package:tititpsini1/profile/widget/ProfilePic.dart';
import 'package:tititpsini1/pusat_bantuan/Pusat.dart';
import 'package:tititpsini1/tentang/Tentang.dart';


class ProfileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: "assets/icons/marker.svg",
          text: "Alamat Saya",
          
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AlamatPage();
                    }
                  )
                );
          },
        ),
        ProfileMenu(
          icon: "assets/icons/bell.svg",
          text: "Ketentuan Layanan",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Ketentuan();
                    }
                  )
                );
          },
        ),
        ProfileMenu(
          icon: "assets/icons/briefcase.svg",
          text: "Kebijakan Privasi",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Kebijakan();
                    }
                  )
                );
          },
        ),
        ProfileMenu(
          icon: "assets/icons/megaphone.svg",
          text: "Pusat Bantuan",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Pusat();
                    }
                  )
                );
          },
        ),
        ProfileMenu(
          icon: "assets/icons/exclamation.svg",
          text: "Tentang",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Tentang();
                    }
                  )
                );
          },
        ),
        ProfileMenu(
          icon: "assets/icons/sign-out-alt.svg",
          text: "Log Out",
          press: () {},
        ),
      ],
    );
  }
}

