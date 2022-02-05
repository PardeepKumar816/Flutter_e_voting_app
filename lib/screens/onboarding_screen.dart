import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../routes.dart';

class OnboardScreen extends StatelessWidget {
  final List<PageViewModel> listOfPages = [
    PageViewModel(
      title: "End-to-End Encryption",
      body:
          "Data is Encrypted from voter's smart phone through transmission to the servers",
      decoration: PageDecoration(
        pageColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
      image: Center(
        child: Image.asset(
          'assets/onboard1.png',
          scale: 4,
        ),
      ),
    ),
    PageViewModel(
      title: "End-to-End Encryption",
      body:
          "Data is Encrypted from voter's smart phone through transmission to the servers",
      decoration: PageDecoration(
        pageColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
      image: Center(
        child: Image.asset(
          'assets/onboard2.png',
          scale: 4,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: IntroductionScreen(
          key: key,
          pages: listOfPages,
          onDone: () {
            Navigator.of(context)
                .pushReplacementNamed(Routes.designationScreen);
          },
          onSkip: () {
            // You can also override onSkip callback
            Navigator.of(context)
                .pushReplacementNamed(Routes.designationScreen);
          },
          showSkipButton: true,
          skip: const Text('Skip'),
          skipColor: Colors.black,
          next: const Icon(Icons.navigate_next),
          nextColor: Colors.black,
          done: const Text("Done",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.white, //Color(0xff114084),
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
          dotsContainerDecorator: BoxDecoration(color: Color(0xff950101)),
        ),
      ),
    );
  }
}
