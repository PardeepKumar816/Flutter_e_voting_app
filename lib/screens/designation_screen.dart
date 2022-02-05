import 'package:flutter/material.dart';

import '../routes.dart';

class DesignationScreen extends StatelessWidget {
  const DesignationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1a67d6),
      backgroundColor: const Color(0xff000000),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'I\'m a',
                  style: TextStyle(fontSize: 32, color: Colors.grey.shade300),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            color: Color(0xff950101), // Color(0xff1b9af3),
                            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                            child: Stack(
                              alignment: AlignmentDirectional.topCenter,
                              children: [
                                Text(
                                  "Voter",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade400),
                                ),
                                Image.asset(
                                  'assets/voter.png',
                                  height: 180,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            color: Color(0xff950101), // Color(0xff1b9af3),
                            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                            child: Stack(
                              alignment: AlignmentDirectional.topCenter,
                              children: [
                                Text(
                                  'Candidate',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade400),
                                ),
                                Image.asset(
                                  'assets/candidate.png',
                                  height: 180,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Routes.orgainzationScreen);
                    },
                    child: Card(
                      color: Color(0xff950101), // Color(0xff1b9af3),
                      // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                      child: Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          Text(
                            "Organization",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400),
                          ),
                          Image.asset(
                            'assets/organizer.png',
                            height: 180,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
