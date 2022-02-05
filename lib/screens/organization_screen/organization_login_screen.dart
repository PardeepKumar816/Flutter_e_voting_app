import 'package:e_voting_app/routes.dart';
import 'package:e_voting_app/textfields.dart';
import 'package:flutter/material.dart';

class OrganizationLoginScreen extends StatelessWidget {
  const OrganizationLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1a67d6),
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        // backgroundColor: Color(0xff1a67d6),
        backgroundColor: const Color(0xff3D0000),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.,
            children: [
              TextFields(
                labelText: 'Organization Name',
                obsureText: false,
              ),
              SizedBox(
                height: 32,
              ),
              TextFields(
                labelText: 'Password',
                obsureText: true,
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Log In'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff950101)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Don\'t have account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.orgainzationScreen);
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Color(0xff950101)),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
