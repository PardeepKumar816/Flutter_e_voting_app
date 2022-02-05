import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double? _height;
  double? _width;

  double percent = 0.0;

  @override
  void initState() {
    Timer? timer;
    timer = Timer.periodic(Duration(milliseconds: 100), (_) {
      print('Percent Update');
      setState(() {
        percent += 1;
        if (percent >= 100) {
          timer!.cancel();
          Navigator.pushReplacementNamed(context, Routes.onboardingScreen);
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text(
      //     "Liquid Progress Bar",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.deepPurple,
      //   centerTitle: true,
      // ),
      body: Container(
        height: _height,
        width: _width,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/splash_image.png",
              scale: 8,
            ),
            // Column(
            //   children: [
            //     // Text(
            //     //   'Liquid Circular Progress Indicator',
            //     //   style: TextStyle(
            //     //       fontStyle: FontStyle.normal,
            //     //       fontWeight: FontWeight.w700,
            //     //       fontSize: 15),
            //     // ),
            //     // SizedBox(
            //     //   height: 30,
            //     // ),
            //     // Container(
            //     //   height: 130,
            //     //   width: 130,
            //     //   child: LiquidCircularProgressIndicator(
            //     //     value: percent / 100,
            //     //     // Defaults to 0.5.
            //     //     valueColor: AlwaysStoppedAnimation(Color(0xFF1A237E)),
            //     //     backgroundColor: Colors.white,
            //     //     borderColor: Colors.deepPurple[100],
            //     //     borderWidth: 4.0,
            //     //     direction: Axis.vertical,
            //     //     center: Text(
            //     //       percent.toString() + "%",
            //     //       style: TextStyle(
            //     //           fontSize: 12.0,
            //     //           fontWeight: FontWeight.w600,
            //     //           color: Colors.white),
            //     //     ),
            //     //   ),
            //     // ),
            //   ],
            // ),
            SizedBox(
              height: 32,
            ),
            Column(
              children: [
                // Text(
                //   'Liquid linear progress indicator',
                //   style: TextStyle(
                //       fontStyle: FontStyle.normal,
                //       fontWeight: FontWeight.w700,
                //       fontSize: 15),
                // ),
                // SizedBox(
                //   height: 30,
                // ),
                Container(
                  height: 24,
                  child: LiquidLinearProgressIndicator(
                    value: percent / 100,
                    valueColor: AlwaysStoppedAnimation((Color(0xff950101))),
                    backgroundColor: Colors.white,
                    borderColor: Colors.deepPurple[100],
                    borderWidth: 5.0,
                    borderRadius: 12.0,
                    direction: Axis.horizontal,
                    center: const Text(
                      'Please Wait',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Text(
            //       'Liquid custom progress indicator.',
            //       style: TextStyle(
            //           fontStyle: FontStyle.normal,
            //           fontWeight: FontWeight.w700,
            //           fontSize: 15),
            //     ),
            //     Container(
            //       child: LiquidCustomProgressIndicator(
            //         value: percent / 100,
            //         valueColor: AlwaysStoppedAnimation(Colors.deepPurple),
            //         backgroundColor: Colors.grey[100],
            //         direction: Axis.vertical,
            //         shapePath: _buildBoatPath(),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  // Path _buildBoatPath() {
  //   return Path()
  //     ..moveTo(15, 120)
  //     ..lineTo(0, 85)
  //     ..lineTo(50, 85)
  //     ..lineTo(60, 80)
  //     ..lineTo(60, 85)
  //     ..lineTo(120, 85)
  //     ..lineTo(105, 120)
  //     ..close();
  // }
}

/*class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  double percent = 0.0;

  @override
  void initState() {
    Timer? timer;
    timer = Timer.periodic(Duration(milliseconds: 300), (_) {
      print('Percent Update');
      setState(() {
        percent += 1;
        if (percent >= 100) {
          timer!.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 60),
    //     () => Navigator.pushReplacementNamed(context, Routes.onboardingScreen));
    return Scaffold(
      backgroundColor: Color(0xff316dc0),
      key: _scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/splash_image.png",
              scale: 8,
            ),
            // LoadingIndicator(
            //   indicatorType: Indicator.ballRotate,
            //
            //   /// Required, The loading type of the widget
            //   colors: const [Colors.white],
            // )

            LiquidLinearProgressIndicator(
              value: percent / 100,
              valueColor: const AlwaysStoppedAnimation(Colors.black),
              backgroundColor: Colors.white,
              borderColor: Colors.deepPurple[100],
              borderWidth: 5.0,
              borderRadius: 12.0,
              direction: Axis.horizontal,
              center: Text(
                percent.toString() + "%",
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
