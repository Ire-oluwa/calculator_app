import 'package:calculator/view_model/arithmetic_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ArithmeticButtons());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 33, right: 33, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 230,
              width: 308,
            ),
            SizedBox(
              height: 40,
              width: 308,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildButton(
                    click: () {},
                    height: 40,
                    radius: 24,
                    textSize: 14,
                    containerColour: const Color(0xff303136),
                    textColour: const Color(0xff29A8FF),
                    text: "e",
                    textWeight: FontWeight.w400,
                  ),
                  buildButton(
                    click: () {},
                    height: 40,
                    radius: 24,
                    textSize: 14,
                    containerColour: const Color(0xff303136),
                    textColour: const Color(0xff29A8FF),
                    text: "µ",
                    textWeight: FontWeight.w400,
                  ),
                  buildButton(
                    click: () {},
                    height: 40,
                    radius: 24,
                    textSize: 14,
                    containerColour: const Color(0xff303136),
                    textColour: const Color(0xff29A8FF),
                    text: "sin",
                    textWeight: FontWeight.w400,
                  ),
                  buildButton(
                    click: () {},
                    height: 40,
                    radius: 24,
                    textSize: 14,
                    containerColour: const Color(0xff303136),
                    textColour: const Color(0xff29A8FF),
                    text: "deg",
                    textWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildButton(
                  click: () {},
                  height: 62,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff616161),
                  textColour: const Color(0xffA5A5A5),
                  text: "Ac",
                  textWeight: FontWeight.w600,
                ),
                buildButton(
                  click: () {},
                  height: 62,
                  radius: 16,
                  textSize: 20,
                  containerColour: const Color(0xff616161),
                  textColour: const Color(0xffA5A5A5),
                  text: "Back",
                  textWeight: FontWeight.w400,
                ),
                buildButton(
                  click: () {},
                  height: 62,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff005DB2),
                  textColour: const Color(0xff339DFF),
                  text: "/",
                  textWeight: FontWeight.w600,
                ),
                buildButton(
                  click: () {},
                  height: 62,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff005DB2),
                  textColour: const Color(0xff339DFF),
                  text: "*",
                  textWeight: FontWeight.w600,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildButton(
                  click: () {},
                  height: 60,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff303136),
                  textColour: const Color(0xff29A8FF),
                  text: "7",
                  textWeight: FontWeight.w600,
                ),
                buildButton(
                  click: () {},
                  height: 60,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff303136),
                  textColour: const Color(0xff29A8FF),
                  text: "8",
                  textWeight: FontWeight.w600,
                ),
                buildButton(
                  click: () {},
                  height: 60,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff303136),
                  textColour: const Color(0xff29A8FF),
                  text: "9",
                  textWeight: FontWeight.w600,
                ),
                buildButton(
                  click: () {},
                  height: 60,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff005DB2),
                  textColour: const Color(0xff24A5FF),
                  text: "-",
                  textWeight: FontWeight.w600,
                ),
              ],
            ),

            ///TODO: have a row with a width, put 2 columns, in the first column, put 2 rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 238,
                  height: 136,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildButton(
                            click: () {},
                            height: 60,
                            radius: 16,
                            textSize: 24,
                            containerColour: const Color(0xff303136),
                            textColour: const Color(0xff29A8FF),
                            text: "4",
                            textWeight: FontWeight.w600,
                          ),
                          buildButton(
                            click: () {},
                            height: 60,
                            radius: 16,
                            textSize: 24,
                            containerColour: const Color(0xff303136),
                            textColour: const Color(0xff29A8FF),
                            text: "5",
                            textWeight: FontWeight.w600,
                          ),
                          buildButton(
                            click: () {},
                            height: 60,
                            radius: 16,
                            textSize: 24,
                            containerColour: const Color(0xff303136),
                            textColour: const Color(0xff29A8FF),
                            text: "6",
                            textWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildButton(
                            click: () {},
                            height: 60,
                            radius: 16,
                            textSize: 24,
                            containerColour: const Color(0xff303136),
                            textColour: const Color(0xff29A8FF),
                            text: "1",
                            textWeight: FontWeight.w600,
                          ),
                          buildButton(
                            click: () {},
                            height: 60,
                            radius: 16,
                            textSize: 24,
                            containerColour: const Color(0xff303136),
                            textColour: const Color(0xff29A8FF),
                            text: "2",
                            textWeight: FontWeight.w600,
                          ),
                          buildButton(
                            click: () {},
                            height: 60,
                            radius: 16,
                            textSize: 24,
                            containerColour: const Color(0xff303136),
                            textColour: const Color(0xff29A8FF),
                            text: "3",
                            textWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(
                      click: () {},
                      radius: 12,
                      textSize: 24,
                      height: 96,
                      containerColour: const Color(0xff005DB2),
                      textColour: const Color(0xff339DFF),
                      text: "+",
                      textWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildButton(
                  click: () {},
                  width: 144,
                  height: 60,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff303136),
                  textColour: const Color(0xff29A8FF),
                  text: "0",
                  textWeight: FontWeight.w600,
                ),
                buildButton(
                  click: () {},
                  height: 60,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff303136),
                  textColour: const Color(0xff29A8FF),
                  text: ".",
                  textWeight: FontWeight.w600,
                ),
                buildButton(
                  click: () {},
                  height: 96,
                  radius: 16,
                  textSize: 24,
                  containerColour: const Color(0xff1991FF),
                  textColour: const Color(0xffB2DAFF),
                  text: "=",
                  textWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton({
    required void Function() click,
    required double radius,
    required double textSize,
    required double height,
    double? width,
    required Color containerColour,
    required Color textColour,
    required String text,
    required FontWeight textWeight,
  }) {
    return GestureDetector(
      onTap: click,
      child: Container(
        height: height,
        width: width ?? 62,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: containerColour,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColour,
              fontWeight: textWeight,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
