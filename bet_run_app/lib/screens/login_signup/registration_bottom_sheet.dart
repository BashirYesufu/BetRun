import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:bet_run_app/screens/login_signup/mobile_number_bottomsheet.dart';
import 'package:flutter/material.dart';

class RegistrationBottomSheet extends StatelessWidget {
  const RegistrationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: kRoundBottomSheet,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                TitleText(
                  text: 'Log in or Sign Up',
                ),
                SizedBox(
                  height: 20,
                ),
                GrayText(
                  text:
                      'Welcome to Betrun. First things first, Log in or \nSign up so that we can begin.',
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WhiteButton(
                  buttonIcon: kPhone,
                  buttonText: 'Continue with Phone Number',
                  onTap: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
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
            )
          ],
        ),
      ),
    );
  }
}
