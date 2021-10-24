import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  final Color? buttonColor;

  final String buttonText;

  final Color? buttonTextColor;

  const ColoredContainer(
      {this.buttonColor, this.buttonText = '', this.buttonTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: buttonColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0, color: Colors.grey.shade100, spreadRadius: 3.0)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Text(
          buttonText,
          style: TextStyle(
              color: buttonTextColor,
              fontSize: 13.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
