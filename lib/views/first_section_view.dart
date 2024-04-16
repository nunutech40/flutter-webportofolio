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
          Flexible(
            // untuk membuat text yang menurun ke bawah, gunakan widgets Flexible
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // cross axixaligment digunakan untuk mengatur align isi content dari column rata kiri, kanan, atau tengah
              mainAxisAlignment: MainAxisAlignment
                  .center, // main axis mengatur isi align isi content secara vertical, top, bottom, center
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Hello! ",
                    style: TextStyle(color: primaryColor, fontSize: 36.0),
                    children: <TextSpan>[
                      TextSpan(
                          text: "I'm Rizka Fajar Nugraha! ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "An "),
                      TextSpan(
                          text: "Mobile Developer",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: " Based In Jawa Tengah")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                    "I have five years experience building mobile app, Android and iOS app. I build Android app with Kotlin and iOS app with Swift. Recently i build cross platform app with Flutter that upload in AppStore and PlayStore. Not only build app to upload in AppStore and PlayStore i build project app with Clean Architecture so it will easy to read and highly maintenance for other programmer that join after it started."),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor, // warna background
                      foregroundColor: Colors.white, // warna textnya
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Let's Talk",
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        SizedBox(
                            width: 24,
                            height: 24,
                            child:
                                Image.asset("assets/images/icons8-chat-48.png"))
                      ],
                    ))
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
