import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'ResCode.dart';
import 'buttoms.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.interpretation, this.bmiresult, this.resultText });
  final String bmiresult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Your Result",
                  style: KTitleStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResCode(
              color: KinActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                   resultText.toUpperCase(),
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmiresult,
                    style: KBMIResultTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: Kbodytextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Buttoms(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
            buttomTitle: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
