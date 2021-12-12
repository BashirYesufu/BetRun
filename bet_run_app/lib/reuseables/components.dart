import 'package:flutter/material.dart';

import 'constants.dart';

///Green Button
class GreenButton extends StatelessWidget {
  const GreenButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  final String buttonText;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Material(
        color: Color(0xFF44CAAC),
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: double.infinity,
          height: 50.0,
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontFamily: kAvenirNext,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
