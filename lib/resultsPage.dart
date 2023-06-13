import 'package:bmi/constants.dart';
import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String bmiResultText;
  final String detailText;

  ResultsPage({required this.bmiResult, required this.bmiResultText, required this.detailText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kHeadLine,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: boxBoard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        bmiResultText,
                        style: kResult,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Center(
                      child: Text(
                        bmiResult,
                        style: kBMInum,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Center(
                      child: Text(
                        detailText,
                        style: kDetailes,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'Re-Calculate',
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
