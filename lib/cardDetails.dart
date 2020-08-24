// import 'dart:ui';

import 'package:flutter/material.dart';

import 'constants.dart';

class CardDetails extends StatelessWidget {
  CardDetails({@required this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 90.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: KlabelTextStyle,
        ),
      ],
    );
  }
}
