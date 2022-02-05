import 'package:e_voting_app/screens/onboarding_screen.dart';
import 'package:e_voting_app/screens/organization_screen/in_process_voting_status.dart';
import 'package:e_voting_app/screens/organization_screen/organization_login_screen.dart';
import 'package:e_voting_app/screens/organization_screen/organization_screen.dart';
import 'package:e_voting_app/screens/organization_screen/vote_adding_screen.dart';
import 'package:e_voting_app/screens/organization_screen/voting_status.dart';
import 'package:e_voting_app/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

import 'screens/designation_screen.dart';
import 'screens/organization_screen/complete_voting_status.dart';

class Routes {
  static String splashScreen = '/splashScreen';
  static String onboardingScreen = '/onboardingScreen';
  static String designationScreen = '/designationScreen';
  static String orgainzationScreen = '/organizationScreen';
  static String organizationLoginScreen = '/organizationLoginScreen';
  static String votingStatus = '/votingStatus';
  static String addVotingScreen = '/addVotingScreen';
  static String inProcessVotingStatus = '/inProcessVotingStatus';
  static String completeVotingStatus = '/completeVotingStatus';

  static getRoutes(BuildContext context) => {
        Routes.splashScreen: (context) => SplashScreen(),
        Routes.onboardingScreen: (context) => OnboardScreen(),
        Routes.designationScreen: (context) => DesignationScreen(),
        Routes.orgainzationScreen: (context) => OrgainzationScreen(),
        Routes.organizationLoginScreen: (context) => OrganizationLoginScreen(),
        Routes.votingStatus: (context) => VotingStatus(),
        Routes.addVotingScreen: (context) => AddVotingScreen(),
        Routes.inProcessVotingStatus: (context) => InProcessVotingStatus(),
        Routes.completeVotingStatus: (context) => CompleteVotingStatus(),
      };
}
