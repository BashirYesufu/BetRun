import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:flutter/material.dart';

class MobileNumberBottomSheet extends StatelessWidget {
  const MobileNumberBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kRoundBottomSheet,
      child: Column(
        children: [
          TitleText(
            text: 'Enter Mobile Number',
          ),
        ],
      ),
    );
  }
}
