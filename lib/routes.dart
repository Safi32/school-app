import 'package:flutter/cupertino.dart';
import 'package:school_app/screens/assignment_screen.dart';
import 'package:school_app/screens/datesheet_screen.dart';
import 'package:school_app/screens/fee_screen.dart';
import 'package:school_app/screens/home_screen.dart';
import 'package:school_app/screens/login_screen.dart';
import 'package:school_app/screens/profile_screen.dart';
import 'package:school_app/screens/result_screen.dart';
import 'package:school_app/screens/splash_screen.dart';

  Map<String, WidgetBuilder> routes = {
    SplashScreen.routeName : (context) => const SplashScreen(),
    LoginScreen.routeName : (context) => const LoginScreen(),
    HomeScreen.routeName : (context) => const HomeScreen(),
    MyProfileScreen.routeName : (context) => const MyProfileScreen(),
    FeeScreen.routeName : (context) => const FeeScreen(),
    AssignmentScreen.routeName : (context) => const AssignmentScreen(),
    DateSheet.routeName : (context) => const DateSheet(),
    ResultScreen.routeName : (context) => const ResultScreen(),
  };