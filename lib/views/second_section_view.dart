import 'package:flutter/material.dart';
import 'package:portofolio/common/styles/colors.dart';

class SecondSectionView extends StatelessWidget {
  const SecondSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      color: lightPrimary,
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.1, vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Me Nunu",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                flex: 1,
                child: Text(
                  "Short story about me about what i can do & what i build.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                  width: screenSize.width *
                      0.1), // Add some space between the two text widgets
              const Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Introducing, my name is Rizka Fajar Nugraha, I have five years Experience building Mobile App. I build app for iPhone and Android.",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "I build app in Android with Kotlin and Flutter. And I build app in iOS / iPhone with Swift and Flutter. I use Flutter to build crossplatform app that run in Android and iOS",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "I create project app for iOS and Android with Clean Architecture, so the projects will be easy to maintenance by others people. I also write unit test with min 70% coverage.",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
