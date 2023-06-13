import 'package:bmi/resultsPage.dart';
import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calcbrain.dart';
import 'constants.dart';
import 'iconContent.dart';

enum GenderType {
  Male,
  Female,
  none,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType gender = GenderType.none;
  int height = 0;
  int weight = 0;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('BMI CALCULATOR', style: kHeadLine)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: boxBoard(
                    colour: gender == GenderType.Male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    childCard: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = GenderType.Male;
                        });
                      },
                      child: card('Male', FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: boxBoard(
                    colour: gender == GenderType.Female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    childCard: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = GenderType.Female;
                        });
                      },
                      child: card('Female', FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: boxBoard(
              colour: kActiveCardColor,
              childCard: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kHeadLine,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 0.0,
                      max: 200.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: boxBoard(
                    colour: kActiveCardColor,
                    childCard: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              weight.toString(),
                              style: kHeadLine,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  child: Icon(FontAwesomeIcons.minus),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  fillColor: Color(0xFF4C4F5E),
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(width: 15.0),
                                RawMaterialButton(
                                  child: Icon(FontAwesomeIcons.plus),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  fillColor: Color(0xFF4C4F5E),
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: boxBoard(
                    colour: kActiveCardColor,
                    childCard: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'AGE',
                              style: kLabelTextStyle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              age.toString(),
                              style: kHeadLine,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  child: Icon(FontAwesomeIcons.minus),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  fillColor: Color(0xFF4C4F5E),
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(width: 15.0),
                                RawMaterialButton(
                                  child: Icon(FontAwesomeIcons.plus),
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  fillColor: Color(0xFF4C4F5E),
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalcBrain calc = CalcBrain(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    detailText: calc.getResult(),
                    bmiResultText: calc.getMeaning(),
                  ),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'Calculate',
                  style: kButton,
                ),
              ),
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.only(bottom: 20.0),
              margin: EdgeInsets.only(top: 10),
              color: kBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
