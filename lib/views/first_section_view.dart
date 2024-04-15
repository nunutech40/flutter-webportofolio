import 'package:flutter/material.dart';
import 'package:portofolio/common/styles/colors.dart';

class FirstSectionView extends StatelessWidget {
  const FirstSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.7,
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
      //decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(
            // untuk membuat text yang menurun ke bawah, gunakan widgets Flexible
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // cross axixaligment digunakan untuk mengatur align isi content dari column rata kiri, kanan, atau tengah
              mainAxisAlignment: MainAxisAlignment
                  .center, // main axis mengatur isi align isi content secara vertical, top, bottom, center

              children: [
                Text(
                  "Hallo, Saya Rizka Fajar Nugraha",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Seorang Mobile Developer",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                    "Saya memiliki limat tahun pengalaman dalam membuat aplikasi mobile, dengan Flutter sebagai cross platform app, dengan Kotlin untuk Android app dan dengan Swift untuk iOS app. Saya tidak hanya membuat aplikasi mobile yang bisa digunakan, tapi juga merancang kode supaya mudah di maintenance.")
              ],
            ),
          ),
          SizedBox(
            width: screenSize.width * 0.35,
            child: Image.asset(
              "assets/images/programmer.png",
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
