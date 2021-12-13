import 'package:bet_run_app/screens/login_signup/onboarding.dart';
import 'package:bet_run_app/screens/login_signup/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BetRun());

class BetRun extends StatelessWidget {
  const BetRun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.id,
      routes: {
        Splash.id: (context) => Splash(),
        OnBoarding.id: (context) => OnBoarding(),
      },
    );
  }
}
