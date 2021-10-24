import 'package:advanced_task/layout/smart_device/screens/details_page.dart';
import 'package:advanced_task/layout/smart_device/widgets/colored_container.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReusableCardDevice extends StatefulWidget {
  final String percentText;
  final int imageCount;
  final String text;

  final Color? buttonColor;

  final String buttonText;

  final Color? buttonTextColor;

  final double percent;

  final Color? percentColor;

  const ReusableCardDevice(
      {this.percentText = '',
      this.imageCount = 0,
      this.text = '',
      this.buttonColor,
      this.buttonText = '',
      this.buttonTextColor,
      this.percent = 0.0,
      this.percentColor});
  @override
  _ReusableCardDeviceState createState() => _ReusableCardDeviceState();
}

class _ReusableCardDeviceState extends State<ReusableCardDevice> {
  List<String> images = <String>[
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12,
                  spreadRadius: 0,
                )
              ]),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60.0,
                          child: Text(
                            widget.text,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    CircularPercentIndicator(
                      radius: 50.0,
                      lineWidth: 4.0,
                      percent: widget.percent,
                      center: new Text(widget.percentText), //
                      progressColor: widget.percentColor,
                      backgroundColor: Colors.grey.shade100,
                    ),
                  ],
                ),
                ColoredContainer(
                  buttonTextColor: widget.buttonTextColor,
                  buttonText: widget.buttonText,
                  buttonColor: widget.buttonColor,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Team',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                ImageStack(
                  imageList: images,
                  totalCount: images
                      .length, // If larger than images.length, will show extra empty circle
                  imageRadius: 25, // Radius of each images
                  imageCount: widget
                      .imageCount, // Maximum number of images to be shown in stack
                  imageBorderWidth: 2,
                  imageBorderColor: Colors.white,
                  extraCountBorderColor: Colors.white,
                  extraCountTextStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                  // showTotalCount: true, // Border width around the images
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
