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
    return Material(
      color: kGreen,
      borderRadius: BorderRadius.circular(10.0),
      child: MaterialButton(
        onPressed: onTap,
        minWidth: double.infinity,
        height: 50.0,
        child: Text(
          buttonText,
          style: TextStyle(
            color: kWhite,
            fontFamily: kAvenirNext,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

/// White Button
class WhiteButton extends StatelessWidget {
  const WhiteButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    required this.buttonIcon,
  }) : super(key: key);

  final String buttonText;
  final Function() onTap;
  final String buttonIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Material(
        color: kWhite,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFE2E6EC)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: MaterialButton(
          elevation: 15.0,
          onPressed: onTap,
          minWidth: double.infinity,
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                buttonIcon,
                width: 16.0,
                height: 16.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                buttonText,
                style: TextStyle(
                  color: kBlack,
                  fontFamily: kAvenirNext,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///Gray Text Widget
class GrayText extends StatelessWidget {
  const GrayText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: kAvenirNext,
          color: Color(0xFF9EA1A7),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

///Dark colored title text
class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 23.0,
        fontFamily: kAvenirNext,
        color: Color(0xFF233249),
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}
