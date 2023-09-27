import 'package:calculator/view_model/arithmetic_buttons.dart';
import 'package:flutter/material.dart';
import 'package:calculator/model/button_values.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final controller = Get.put(ArithmeticButtons());
    return Scaffold(
      backgroundColor: Colors.white12,
      body: SafeArea(
        child: Column(
          children: [
            ///output
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.bottomRight,
                  child: _buildText(
                    "${controller.num1}${controller.operand}${controller.num2}"
                            .isEmpty
                        ? "0"
                        : "${controller.num1}${controller.operand}${controller.num2}",
                    Colors.white,
                    48,
                    FontWeight.bold,
                    align: TextAlign.end,
                  ),
                ),
              ),
            ),

            ///buttons
            Wrap(
              children: Button.buttonValues
                  .map(
                    (value) => SizedBox(
                      width: value == Button.n0
                          ? screenSize.width / 2
                          : screenSize.width / 4,
                      height: screenSize.width / 5,
                      child: _buildButton(value),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text, Color colour, double size, FontWeight weight,
      {TextAlign? align = TextAlign.center}) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        color: colour,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }

  Widget _buildButton(String value) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: getButtonColour(value),
        clipBehavior: Clip.hardEdge,
        shape: const OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.white24),
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: _buildText(value, Colors.white, 24, FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Color getButtonColour(value) {
    return [Button.del, Button.clr].contains(value)
        ? Colors.blueGrey
        : [
            Button.per,
            Button.multiply,
            Button.add,
            Button.subtract,
            Button.divide,
            Button.calculate
          ].contains(value)
            ? Colors.orange
            : Colors.black87;
  }
}
