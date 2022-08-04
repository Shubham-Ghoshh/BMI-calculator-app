import 'package:flutter/material.dart';
import 'constant.dart';

class bottomCard extends StatelessWidget {
  bottomCard(this.bottomCardText, this.onPress);

  final String bottomCardText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        child: Center(
          child: Text(
            bottomCardText,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.3,
            ),
          ),
        ),
        width: double.infinity,
        height: 80.0,
        margin: const EdgeInsets.only(top: 20.0),
        color: kbottomBarColor,
      ),
    );
  }
}
