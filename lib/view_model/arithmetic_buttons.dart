
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class ArithmeticButtons extends GetxController{
  List operators = [];
  List<double> numbers = [];

  appendPlus(){
    operators.add("+");
    update();
  }

  deleteOperator(String operator){
    if (operator.isNumericOnly){
      numbers.removeLast();
    }
    operators.removeLast();
  }

  calculate(List<double> num, List operator){
    if(num.isEmpty || operator.isEmpty || num.length != operator.length + 1){
      throw ArgumentError("Invalid input: The number of numbers and operators must match the order of operations.");
    }
     applyOperator(double a, double b, String operator){
      switch(operator){
        case "+":
          return a + b;
        case "-":
          return a - b;
        case "*":
          return a * b;
        case "/":
          if (b == 0){
            throw ArgumentError("Division by zero is not allowed.");
          }
          return a / b;
      }
    }

    double? result = num[0];
    for (int i = 0; i < operators.length; i++) {
      result = applyOperator(result!, num[i + 1], operators[i]);
    }
    return result;
  }
}
final List<String> texts = [
  "e",
  "µ",
  "sin",
  "deg",
  "Ac",
  "Back",
  "/",
  "*",
  "7",
  "8",
  "9",
  "-",
  "4",
  "5",
  "6",
  "+",
  "1",
  "2",
  "3",
  "0",
  ".",
  "=",
];