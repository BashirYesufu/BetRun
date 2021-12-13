import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:bet_run_app/screens/login_signup/mobile_number_bottomsheet.dart';
import 'package:flutter/material.dart';

class RegistrationBottomSheet extends StatelessWidget {
  const RegistrationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kRoundBottomSheet,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'Log in or Sign Up',
                style: TextStyle(
                  fontSize: 23.0,
                  fontFamily: kAvenirNext,
                  color: Color(0xFF233249),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to Betrun. First things first, Log in or \nSign up so that we can begin.',
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: kAvenirNext,
                  color: Color(0xFF9EA1A7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          WhiteButton(
            buttonIcon: kPhone,
            buttonText: 'Continue with Phone Number',
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                context: context,
                builder: (context) => MobileNumberBottomSheet(),
              );
            },
          ),
          WhiteButton(
            buttonIcon: kMail,
            buttonText: 'Continue with Email',
            onTap: () {},
          ),
          WhiteButton(
            buttonIcon: kApple,
            buttonText: 'Continue with Apple',
            onTap: () {},
          ),
          WhiteButton(
            buttonIcon: kGoogle,
            buttonText: 'Continue with Google',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
