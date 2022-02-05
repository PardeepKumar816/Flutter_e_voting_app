import 'package:e_voting_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splashScreen,
      routes: Routes.getRoutes(context),
    );
  }
}
