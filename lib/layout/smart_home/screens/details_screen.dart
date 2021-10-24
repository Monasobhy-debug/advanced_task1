import 'package:advanced_task/layout/smart_home/widget/bottom_button.dart';
import 'package:advanced_task/layout/smart_home/widget/reusable_circle.dart';
import 'package:advanced_task/layout/smart_home/widget/singular_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        actionsIconTheme: IconThemeData.fallback(),
        title: Text(
          'Bathroom',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  children: [
                    ReusableCircle(
                      backgroundColor: Colors.deepOrange,
                      textColor: Colors.deepOrange,
                      icon: Icons.theaters_outlined,
                      text: 'Heater',
                      iconColor: Colors.white,
                    ),
                    ReusableCircle(
                      backgroundColor: Colors.white,
                      textColor: Colors.grey.shade300,
                      icon: Icons.music_note_outlined,
                      text: 'Sound',
                      iconColor: Colors.black45,
                    ),
                    ReusableCircle(
                      backgroundColor: Colors.white,
                      textColor: Colors.grey.shade300,
                      icon: Icons.window,
                      text: 'Fan',
                      iconColor: Colors.black45,
                    ),
                    ReusableCircle(
                      backgroundColor: Colors.white,
                      textColor: Colors.grey.shade300,
                      icon: Icons.wb_incandescent_outlined,
                      text: 'Light',
                      iconColor: Colors.black45,
                    ),
                    ReusableCircle(
                      backgroundColor: Colors.white,
                      textColor: Colors.grey.shade300,
                      icon: Icons.flash_on_outlined,
                      text: 'Energy',
                      iconColor: Colors.black45,
                    ),
                    ReusableCircle(
                      backgroundColor: Colors.white,
                      textColor: Colors.grey.shade300,
                      icon: Icons.theaters_outlined,
                      text: 'Heater',
                      iconColor: Colors.black45,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SingularSlider(),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current temperatures',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '16.5 ',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '°C',
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current humidity',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '60% ',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Text(
                    'Turn On/Off',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: FlutterSwitch(
                    width: 60.0,
                    height: 25.0,
                    activeColor: Colors.deepPurple.shade800,
                    toggleSize: 20.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 2.0,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            BottomButton(),
          ],
        ),
      ),
    );
  }
}
