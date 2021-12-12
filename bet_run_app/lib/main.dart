import 'package:flutter/material.dart';

void main() => runApp(const BetRun());

class BetRun extends StatelessWidget {
  const BetRun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
