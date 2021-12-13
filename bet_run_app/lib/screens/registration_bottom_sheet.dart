import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:flutter/material.dart';

class RegistrationBottomSheet extends StatelessWidget {
  const RegistrationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
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
          Text(
            'Welcome to Betrun. First things first, Log in or \nSign up so that we can begin.',
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: kAvenirNext,
              color: Color(0xFF9EA1A7),
            ),
            textAlign: TextAlign.center,
          ),
          WhiteButton(
            buttonText: 'Continue with Phone Number',
            onTap: () {},
          ),
          WhiteButton(
            buttonText: 'Continue with Apple',
            onTap: () {},
          ),
          WhiteButton(
            buttonText: 'Continue with Google',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
