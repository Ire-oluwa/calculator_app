import 'package:calculator/model/button_values.dart';
import 'package:get/get.dart';

class ArithmeticButtons extends GetxController {
  var num1 = "".obs;
  var operand = "".obs;
  var num2 = "".obs;

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
    if (operand.isEmpty)return;
    if (num2.isEmpty)return;

    double number1 = double.parse(num1.value);
    double number2 = double.parse(num2.value);

    var result = 0.0;
    switch (operand.value){
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

    num1.value = "$result";
    if (num1.value.endsWith(".0")){
      num1.value = num1.value.substring(0, num1.value.length - 2);
    }
    operand.value = "";
    num2.value = "";
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
    final number = double.parse(num1.value);
    num1.value = "${(number / 100)}";
    operand.value = "";
    num2.value = "";
    update();
  }

  ///clearAll
  void clearAll() {
    num1.value = "";
    operand.value = "";
    num2.value = "";
    update();
  }

  ///delete
  void delete() {
    if (num2.value.isNotEmpty) {
      num2.value = num2.value.substring(0, num2.value.length - 1);
    } else if (operand.value.isNotEmpty) {
      operand.value = "";
    } else if (num1.value.isNotEmpty) {
      num1.value = num1.value.substring(0, num1.value.length - 1);
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
      operand.value = value;
    }
    // assign number 1
    else if (num1.value.isEmpty || operand.value.isEmpty) {
      if (value == Button.dot && num1.value.contains(Button.dot)) return;
      if (value == Button.dot && (num1.value.isEmpty || num1.value == Button.dot)) {
        value = "0.";
      }
      num1.value += value;
    } else if (num2.value.isEmpty || operand.value.isNotEmpty) {
      if (value == Button.dot && num1. value.contains(Button.dot)) return;
      if (value == Button.dot && (num2.value.isEmpty || num2.value == Button.dot)) {
        value = "0.";
      }
      num2.value += value;
    }

    update();
  }
}
