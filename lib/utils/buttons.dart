import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.click,
    required this.containerColour,
    this.textColour,
    required this.radius,
    required this.text,
  });

  final void Function() click;
  final Color containerColour;
  final Color? textColour;
  final double radius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Container(
        height: 40,
        width: 62,
        decoration: BoxDecoration(
          color: containerColour,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColour ?? const Color(0xff29A8FF),
            ),
          ),
        ),
      ),
    );
  }
}
