import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:flutter/material.dart';

class CodeVerificationBottomsheet extends StatelessWidget {
  const CodeVerificationBottomsheet({Key? key}) : super(key: key);
  static const id = 'code_verification';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      height: (MediaQuery.of(context).size.height) * 0.7,
      decoration: kRoundBottomSheet,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  TitleText(
                    text: 'Enter the verification code \nwe sent you',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              // Spacer(),
              WhiteButton(
                buttonText: 'Back',
                onTap: () {
                  Navigator.pop(context);
                },
                buttonIcon: '',
              )
            ],
          ),
        ),
      ),
    );
  }
}
