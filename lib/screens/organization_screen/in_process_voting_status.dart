import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InProcessVotingStatus extends StatelessWidget {
  const InProcessVotingStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xff3D0000),
        elevation: 4,
      ),
      backgroundColor: const Color(0xff000000),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    // side: BorderSide(
                    //   style: BorderStyle.solid,
                    //   color: Color(0xffFF0000),
                    //   // width: 5,
                    // ),
                    ),
                color: Color(0xff950101),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'No of Votes : 322',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              const Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    // side: BorderSide(
                    //   style: BorderStyle.solid,
                    //   color: Color(0xffFF0000),
                    //   // width: 5,
                    // ),
                    ),
                color: Color(0xff950101),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Remaining Votes : 320',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              const Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    // side: BorderSide(
                    //   style: BorderStyle.solid,
                    //   color: Color(0xffFF0000),
                    //   // width: 5,
                    // ),
                    ),
                color: Color(0xff950101),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Agree Percentage',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              const Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    // side: BorderSide(
                    //   style: BorderStyle.solid,
                    //   color: Color(0xffFF0000),
                    //   // width: 5,
                    // ),
                    ),
                color: Color(0xff950101),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Disagree Percentage',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff950101),
                  ),
                ),
                onPressed: () {},
                child: Text('Cancel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
