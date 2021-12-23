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
    );
  }
}
