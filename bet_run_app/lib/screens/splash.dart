import 'package:bet_run_app/reuseables/constants.dart';
import 'package:bet_run_app/screens/onboarding.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  static const id = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _goToNextScreen();
  }

  void _goToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushNamed(context, OnBoarding.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 120.0),
          child: Image.asset(
            kBetrunDark,
          ),
        ),
      ),
    );
  }
}
