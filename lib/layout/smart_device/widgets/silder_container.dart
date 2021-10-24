import 'package:advanced_task/layout/smart_device/widgets/image_stack.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SliderContainer extends StatelessWidget {
  final int? imageCount;
  final row;
  final String text;
  final Color? lineColor;
  final String textTime;

  final double percent;

  SliderContainer(
      {this.lineColor,
      this.text = '',
      this.row,
      this.textTime = '',
      this.percent = 0.0,
      this.imageCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100, spreadRadius: 4.0, blurRadius: 4.0)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: row,
              ),
              Divider(color: Colors.grey.shade300),
              Row(
                children: [
                  Container(
                    height: 15.0,
                    width: 3.0,
                    color: lineColor,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.watch_later,
                    size: 15.0,
                    color: Colors.grey,
                  ),
                  Text(
                    textTime,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.flag_outlined,
                      color: Colors.red.shade400,
                      size: 15.0,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 120,
                      percent: percent,
                      backgroundColor: Colors.red.shade50,
                      lineHeight: 5.0,
                    ),
                    Icon(
                      Icons.flag,
                      color: Colors.red.shade400,
                      size: 15.0,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CircularImages(
                    imageCount: imageCount,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Send invite',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 280,
                  ),
                  Icon(
                    Icons.share_outlined,
                    size: 20.0,
                    color: Colors.grey.shade500,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
