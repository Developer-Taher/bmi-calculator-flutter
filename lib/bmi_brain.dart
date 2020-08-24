// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);
  final int height;
  final int weight;
  double _bmi;

  String calculatr() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi > 25.0) {
      return "Over Weight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Under Weight";
    }
  }

  String getInterpretation() {
    if (_bmi > 25.0) {
      return "you have a hieght than normal body weight. try to exercize more.";
    } else if (_bmi > 18.5) {
      return "you have anormal body weight. good job!";
    } else {
      return "you have a lower than normal body weight.you can eat a bit more.";
    }
  }
}
