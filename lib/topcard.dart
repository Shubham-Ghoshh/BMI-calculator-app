import 'package:flutter/material.dart';

class topCardChild extends StatelessWidget {
  topCardChild(this.topIcon, this.topStr);

  final IconData topIcon;
  final String topStr;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          topIcon,
          size: 65.0,
        ),
        const SizedBox(
          height: 18.0,
        ),
        Text(
          topStr,
          style: const TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
