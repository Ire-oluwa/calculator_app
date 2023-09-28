import 'package:calculator/model/button_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class ArithmeticButtons extends GetxController {
  String num1 = "";
  String operand = "";
  String num2 = "";

  /// Clicking Button
  void onButtonTap(value) {
    //delete
    if (value == Button.del) {
      delete();
      return;
    }

    //clear everything
    if (value == Button.clr) {
      clearAll();
      return;
    }

    //percentage
    if (value == Button.per) {
      convertToPercentage();
      return;
    }

    if (value ==  Button.calculate){
      calculate();
      return;
    }

    appendValue(value);
  }

  ///calculate
  void calculate(){
    if (num1.isEmpty)return;
    if (num1.isEmpty)return;
    if (num1.isEmpty)return;

    double number1 = double.parse(num1);
    double number2 = double.parse(num1);

    var result = 0.0;
    switch (operand){
      case Button.add:
        result = number1 + number2;
        break;
      case Button.subtract:
        result = number1 - number2;
        break;
      case Button.multiply:
        result = number1 * number2;
        break;
      case Button.divide:
        result = number1 / number2;
        break;
      default:
    }

    num1 = "$result";
    if (num1.endsWith(".0")){
      num1 = num1.substring(0, num1.length - 2);
    }
    operand = "";
    num2 = "";
    update();
  }

  ///percentage
  void convertToPercentage() {
    if (num1.isNotEmpty && operand.isNotEmpty && num2.isNotEmpty) {
      calculate();
    }
    if (operand.isNotEmpty) {
      return;
    }
    final number = double.parse(num1);
    num1 = "${(number / 100)}";
    operand = "";
    num2 = "";
    update();
  }

  ///clearAll
  void clearAll() {
    num1 = "";
    operand = "";
    num2 = "";
    update();
  }

  ///delete
  void delete() {
    if (num2.isNotEmpty) {
      num2 = num2.substring(0, num2.length - 1);
    } else if (operand.isNotEmpty) {
      operand = "";
    } else if (num1.isNotEmpty) {
      num1 = num1.substring(0, num1.length - 1);
    }
    update();
  }

  ///append value
  void appendValue(String value) {
    // if it's not a number or dot
    if (value != Button.dot && int.tryParse(value) == null) {
      // if there's a sign and a second number
      if (operand.isNotEmpty && num2.isNotEmpty) {
        calculate();
      }
      //assign the non-number to operand
      operand = value;
    }
    // assign number 1
    else if (num1.isEmpty || operand.isEmpty) {
      if (value == Button.dot && num1.contains(Button.dot)) return;
      if (value == Button.dot && (num1.isEmpty || num1 == Button.dot)) {
        value = "0.";
      }
      num1 += value;
    } else if (num2.isEmpty || operand.isNotEmpty) {
      if (value == Button.dot && num1.contains(Button.dot)) return;
      if (value == Button.dot && (num2.isEmpty || num2 == Button.dot)) {
        value = "0.";
      }
      num2 += value;
    }

    update();
  }
}
