import 'package:flutter/material.dart';
import 'package:portofolio/views/first_section_view.dart';
import 'package:portofolio/widgets/navigation_bar/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        NavBar(),
        FirstSectionView(),
      ]),
    );
  }
}
