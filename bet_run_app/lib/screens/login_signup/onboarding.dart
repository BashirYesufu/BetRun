import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:bet_run_app/screens/login_signup/registration_bottom_sheet.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 150),
                child: Image.asset(kBetrunLight),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'HEY RUNNER',
                        style: TextStyle(
                          fontFamily: kRighteous,
                          fontSize: 31.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: GreenButton(
                      buttonText: 'Get Started',
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          context: context,
                          builder: (context) => RegistrationBottomSheet(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
