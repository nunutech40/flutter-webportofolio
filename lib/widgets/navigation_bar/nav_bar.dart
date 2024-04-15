import 'package:flutter/material.dart';

import 'nav_bar_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 2,
          offset: Offset(2, 4),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 80,
                width: 150,
                child: Image.asset('assets/icons/flutter_ic_48.png'),
              ),
              const Text(
                "Rizka Fajar Nugraha",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NavBarItem('Home'),
                NavBarItem("Portofolio"),
                NavBarItem("Resume"),
                NavBarItem("Tools"),
                NavBarItem('About'),
                NavBarItem('Blog'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
