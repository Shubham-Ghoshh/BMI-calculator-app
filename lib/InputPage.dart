import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'topcard.dart';
import 'constant.dart';
import 'res.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kcardColor;
  Color femaleCardColor = kcardColor;
  int height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor == kcardColor
                            ? maleCardColor = kactiveCardColor
                            : maleCardColor = kcardColor;
                        if (maleCardColor == kactiveCardColor) {
                          femaleCardColor = kcardColor;
                        }
                      });
                    },
                    child: card(
                      maleCardColor,
                      topCardChild(FontAwesomeIcons.mars, "MALE"),
                      1,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleCardColor == kcardColor
                            ? femaleCardColor = kactiveCardColor
                            : femaleCardColor = kcardColor;
                        if (femaleCardColor == kactiveCardColor) {
                          maleCardColor = kcardColor;
                        }
                      });
                    },
                    child: card(
                      femaleCardColor,
                      topCardChild(
                        FontAwesomeIcons.venus,
                        "FEMALE",
                      ),
                      1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          card(
            kactiveCardColor,
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const Center(
                  child: Text(
                    "HEIGHT",
                    style: ksmallFontStyle,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kbigFontStyle,
                    ),
                    const Text(
                      "cm",
                      style: ksmallFontStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: const Color(0xFFE03050),
                    inactiveTrackColor: const Color(0xFF8D8E98),
                    thumbColor: const Color(0xFFE03050),
                    overlayColor: const Color(0x29EB1555),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
            1,
          ),
          Expanded(
            child: Row(
              children: [
                card(
                  kactiveCardColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "WEIGHT",
                        style: ksmallFontStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kbigFontStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: const Color(0xFFE03050),
                            foregroundColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                if (weight > 1) {
                                  weight--;
                                }
                              });
                            },
                            child: const Icon(
                              FontAwesomeIcons.minus,
                            ),
                          ),
                          const SizedBox(width: 15),
                          FloatingActionButton(
                            backgroundColor: const Color(0xFFE03050),
                            foregroundColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  1,
                ),
                card(
                  kactiveCardColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "AGE",
                        style: ksmallFontStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kbigFontStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: const Color(0xFFE03050),
                            foregroundColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                if (age > 1) {
                                  age--;
                                }
                              });
                            },
                            child: const Icon(
                              FontAwesomeIcons.minus,
                            ),
                          ),
                          const SizedBox(width: 15),
                          FloatingActionButton(
                            backgroundColor: const Color(0xFFE03050),
                            foregroundColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const Icon(
                              FontAwesomeIcons.plus,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  1,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(weight, height);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(calc.calculateBmi(),
                      calc.getResult(), calc.getInterpretation()),
                ),
              );
            },
            child: Container(
              child: const Center(
                child: Text(
                  "CALCULATE",
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
