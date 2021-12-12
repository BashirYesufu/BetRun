import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:bet_run_app/screens/registration_bottom_sheet.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  static const id = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
            kBackground,
          )),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 150),
              child: Image.asset(kBetrunLight),
            ),
            Text(
              'HEY RUNNER',
              style: TextStyle(
                fontFamily: kRighteous,
                fontSize: 31.0,
                color: Colors.white,
              ),
            ),
            Text(
              'Bet on yourself, achieve your goals, \nwin your money back and more',
              style: TextStyle(
                color: Colors.white,
                fontFamily: kAvenirNext,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
            GreenButton(
              buttonText: 'Get Started',
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => RegistrationBottomSheet(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
