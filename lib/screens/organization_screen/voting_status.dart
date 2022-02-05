import 'package:e_voting_app/lists.dart';
import 'package:e_voting_app/routes.dart';
import 'package:e_voting_app/screens/splash_screen.dart';
import 'package:e_voting_app/textfields.dart';
import 'package:flutter/material.dart';
import 'progress_indicator.dart';
import 'organization_screen.dart';

class VotingStatus extends StatelessWidget {
  VotingStatus({Key? key}) : super(key: key);

  final ScrollController? _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff1a67d6),
      backgroundColor: const Color(0xff000000),
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        backgroundColor: Colors.black,
        child: ListView(
          // Important: Remove any padding from the ListView.

          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff3D0000),
              ),
              child: CircleAvatar(
                backgroundColor: Color(0xff950101),
                backgroundImage: AssetImage(
                    AddingPictureByUser.image?.path ?? 'assets/organizer.png'),
                radius: 80,
              ),
            ),
            const ListTile(
              title: Text(
                'Organization Name',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
              child: ListTile(
                title: const Text(
                  'Requests',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
              child: ListTile(
                title: const Text(
                  'Log out',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        //backgroundColor: const Color(0xff1a67d6),
        backgroundColor: const Color(0xff3D0000),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.designationScreen);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.addVotingScreen);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.grey.shade200,
                    size: 32,
                  ),
                  Text(
                    'add',
                    style: TextStyle(color: Colors.grey.shade200, fontSize: 24),
                  ),
                ],
              ),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(
              //     Colors.black.withOpacity(0.1),
              //   ),
              // ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'In Process',
                    style: TextStyle(color: Colors.grey.shade200, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: [
                  //       ProgressIndicator(
                  //         purposeOfVote: 'hello',
                  //         timeLeft: '12:50',
                  //       ),
                  //       ProgressIndicator(
                  //         purposeOfVote: 'hello',
                  //         timeLeft: '12:50',
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // ListView.builder(
                  //   itemCount: progressIndicator.length,
                  //   itemBuilder: (BuildContext ctxt, int index) => Wrap(
                  //     children: progressIndicator,
                  //   ),
                  // ),
                  Container(
                    height: 250,
                    child: Scrollbar(
                      thickness: 8,
                      child: ListView(
                          controller: _controller,
                          physics: AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: Lists.progressIndicator),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Completed',
                    style: TextStyle(color: Colors.grey.shade200, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: Scrollbar(
                      thickness: 8,
                      child: ListView(
                          controller: _controller,
                          physics: AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: Lists.progressIndicator),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Choice {
//   const Choice({this.title, this.icon});
//
//   final String? title;
//   final IconData? icon;
// }
//
// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'Car', icon: Icons.directions_car),
//   const Choice(title: 'Bicycle', icon: Icons.directions_bike),
//   const Choice(title: 'Boat', icon: Icons.directions_boat),
//   const Choice(title: 'Bus', icon: Icons.directions_bus),
//   const Choice(title: 'Train', icon: Icons.directions_railway),
//   const Choice(title: 'Walk', icon: Icons.directions_walk),
// ];
//
// class ChoiceCard extends StatelessWidget {
//   ChoiceCard({required this.choice});
//
//   final Choice choice;
//
//   @override
//   Widget build(BuildContext context) {
//     final TextStyle? textStyle = Theme.of(context).textTheme.headline1;
//     return Card(
//       color: Colors.white,
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Icon(choice.icon, size: 128.0, color: textStyle!.color),
//             Text(choice.title!, style: textStyle),
//           ],
//         ),
//       ),
//     );
//   }
// }
