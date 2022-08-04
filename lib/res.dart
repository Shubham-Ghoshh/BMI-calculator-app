import 'package:bmi/bottom_card.dart';
import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.bmiResult, this.bmiValue, this.interpretation);
  final String bmiValue;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Results"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: const Center(
              child: Text(
                "Your Result",
                style: resultStyle,
              ),
            ),
            margin: const EdgeInsets.all(10),
          ),
          Expanded(
            child: card(
              kactiveCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiValue,
                    style: const TextStyle(
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              1,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: const Center(
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(
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
          ),
        ],
      ),
    );
  }
}
