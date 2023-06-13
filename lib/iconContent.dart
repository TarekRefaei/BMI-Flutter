import 'package:flutter/material.dart';

import 'constants.dart';

class card extends StatelessWidget {
  final String label;
  final IconData icon;

  card(this.label, this.icon);

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
