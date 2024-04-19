import 'package:flutter/material.dart';
import 'package:portofolio/views/first_section_view.dart';
import 'package:portofolio/views/footer_view.dart';
import 'package:portofolio/views/second_section_view.dart';
import 'package:portofolio/views/third_section_view.dart';
import 'package:portofolio/widgets/navigation_bar/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        NavBar(),
        Expanded(
          // expanded berguna untuk memberi tahu vm flutter supaya scretcing pada column yang memiliki item dengan hight masing2
          child: SingleChildScrollView(
            child: Column(
              children: [
                FirstSectionView(),
                SecondSectionView(),
                SizedBox(
                  height: 16.0,
                ),
                ThirdSectionView(),
                SizedBox(
                  height: 16.0,
                ),
                FooterView()
              ],
            ),
          ),
        )
      ]),
    );
  }
}
