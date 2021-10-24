import 'package:advanced_task/layout/smart_home/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String? numOfDevice;
  final String? room;
  final IconData? icon;
  final Color? colorIcon;
  final Color? color;

  final Color? textColor;

  const ReusableCard(
      {this.numOfDevice,
      this.room,
      this.icon,
      this.colorIcon,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Details()));
          },
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: color,
              border: Border.all(
                color: Colors.deepOrange,
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: colorIcon,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    room!,
                    style: TextStyle(fontSize: 20.0, color: textColor),
                  ),
                  Text(
                    numOfDevice!,
                    style: TextStyle(fontSize: 10.0, color: textColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
