import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card(this.colour, this.cardChild, this.flexValue);

  final Color colour;
  final Widget cardChild;
  final int flexValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.all(9),
          child: cardChild,
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      flex: 1,
    );
  }
}
