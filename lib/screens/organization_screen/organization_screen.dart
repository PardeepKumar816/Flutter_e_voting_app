import 'package:e_voting_app/textfields.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../routes.dart';

class OrgainzationScreen extends StatelessWidget {
  // const OrgainzationScreen({Key? key}) : super(key: key);

  List<Widget> bottamModalSheetList = [
    TextButton(
      onPressed: () {},
      child: Text('From Device'),
    ),
  ];

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
        //  backgroundColor: Color(0xff1a67d6), //0xff042f9d
        backgroundColor: const Color(0xff3D0000),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          //  physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff950101),
                      backgroundImage: AssetImage(
                          AddingPictureByUser.image?.path ??
                              'assets/organizer.png'), //"assets/tekro.png"),
                      radius: 80,
                    ),
                    AddingPictureByUser(),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                TextFields(
                  labelText: 'Organization Name',
                  obsureText: false,
                ),
                SizedBox(
                  height: 32,
                ),
                TextFields(
                  labelText: 'Address',
                  obsureText: false,
                ),
                SizedBox(
                  height: 32,
                ),
                TextFields(
                  labelText: 'WebSite',
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
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, Routes.votingStatus);
                  },
                  child: Text('Sign Up'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff950101)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Already have account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.organizationLoginScreen);
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Color(0xff950101)),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddingPictureByUser extends StatelessWidget {
  static XFile? image;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  onPressed: () async {
                    final ImagePicker _picker = ImagePicker();
                    // Pick an image
                    image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    // if (image != null) {}
                  },
                  child: Text(
                    'From Device',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.1))),
                ),
                TextButton(
                  onPressed: () async {
                    final ImagePicker _picker = ImagePicker();
                    // Pick an image
                    image = await _picker.pickImage(source: ImageSource.camera);
                  },
                  child: Text(
                    'Use Camera',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.1))),
                ),
              ],
            );
          },
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
        );
      },
      fillColor: Color(0xffFF0000),
      constraints: BoxConstraints(minWidth: 32, minHeight: 32),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
