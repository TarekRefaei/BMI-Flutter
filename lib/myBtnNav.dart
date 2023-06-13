import 'package:flutter/material.dart';

import 'constants.dart';


class myNavBtn extends StatelessWidget {

  final String btnName;
  final Function myNavigation;

  myNavBtn({required this.btnName, required this.myNavigation,});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myNavigation(),
      child: Container(
        child: Center(
          child: Text(
            btnName,
            style: kButton,
          ),
        ),
        width: double.infinity,
        height: 80,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10),
        color: kBarColor,
      ),
    );
  }
}