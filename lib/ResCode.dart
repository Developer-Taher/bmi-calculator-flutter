import 'package:flutter/material.dart';

class ResCode extends StatelessWidget {
  ResCode({@required this.color, this.cardChild, this.onpressed});
  final Color color;
  final Widget cardChild;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        // height: 220.0,
        // width: 170.0,
      ),
    );
  }
}
