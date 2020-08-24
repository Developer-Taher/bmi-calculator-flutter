import 'package:flutter/material.dart';

import 'constants.dart';

class Buttoms extends StatelessWidget {
  Buttoms({@required this.buttomTitle, @required this.onTap});
  final Function onTap;
  final String buttomTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttomTitle,
            style: KLargeButtonTextStyle,
          ),
        ),
        color: KbottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: KbottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      // elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

