import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {

  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 5 seconds duration of splash screen
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("School",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kTextWhiteColor,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                  ),
                ),
                Text("Brain",
                  style: GoogleFonts.pattaya(
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    color: kTextWhiteColor,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Image.asset("assets/images/splash.png",
              height: 150.0,
              width: 150.0,
            ),
          ],
        ),
      ),
    );
  }
}
