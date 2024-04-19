import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: Colors.black54,
      width: screenSize.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Text(
          "Get In Touch",
          style: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          "For business inquiries, please send me an email at: r.fajarnugraha@gmail.com.",
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                "assets/icons/icons8-instagram-50.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                "assets/icons/icons8-linkedin-50.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                "assets/icons/icons8-x-50.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
