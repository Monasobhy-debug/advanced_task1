import 'package:flutter/material.dart';

class ReusableCircle extends StatelessWidget {
  final Color? backgroundColor;
  final IconData? icon;
  final Color? textColor;
  final Color? iconColor;
  final String text;

  const ReusableCircle(
      {this.backgroundColor,
      this.icon,
      this.textColor,
      this.iconColor,
      this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(width: 0.5, color: Colors.grey.shade300),
              color: backgroundColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 20.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor, fontSize: 15.0),
          )
        ],
      ),
    );
  }
}
