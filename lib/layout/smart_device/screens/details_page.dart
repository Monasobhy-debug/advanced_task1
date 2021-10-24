import 'package:advanced_task/layout/smart_device/widgets/colored_container.dart';
import 'package:advanced_task/layout/smart_device/widgets/image_stack.dart';
import 'package:advanced_task/layout/smart_device/widgets/silder_container.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 15.0,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.grey.shade500,
            ),
            Icon(
              Icons.add_to_home_screen_sharp,
              color: Colors.black54,
            ),
            SizedBox(
              width: 10.0,
            )
          ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Design Line Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 13.0,
                        backgroundWidth: 1.0,
                        percent: 0.85,
                        center: new Text(
                          '85%',
                          style: TextStyle(
                              fontSize: 19.0,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ), //
                        progressColor: Colors.indigoAccent.shade100,
                        backgroundColor: Colors.grey.shade300,
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Team',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          CircularImages(
                            imageCount: 4,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 15.0,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'started May, 13',
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          ColoredContainer(
                            buttonColor: Colors.green.shade50,
                            buttonText: ' +  Add task ',
                            buttonTextColor: Colors.green,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ColoredContainer(
                      buttonTextColor: Colors.grey.shade400,
                      buttonText: '  To-dos ',
                      buttonColor: Colors.white,
                    ),
                    ColoredContainer(
                      buttonTextColor: Colors.grey.shade400,
                      buttonText: '  UAT ',
                      buttonColor: Colors.white,
                    ),
                    ColoredContainer(
                      buttonTextColor: Colors.grey.shade400,
                      buttonText: '  Done ',
                      buttonColor: Colors.white,
                    ),
                    SizedBox(
                      width: 50.0,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      children: [
                        SliderContainer(
                          lineColor: Colors.lightGreen.shade200,
                          row: [
                            ColoredContainer(
                              buttonColor: Colors.cyan.shade50,
                              buttonText: 'New',
                              buttonTextColor: Colors.cyan.shade400,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            ColoredContainer(
                              buttonColor: Colors.red.shade50,
                              buttonText: 'Urgent',
                              buttonTextColor: Colors.red.shade400,
                            )
                          ],
                          imageCount: 3,
                          percent: 0.55,
                          text: 'Call with Australians',
                          textTime: ' 13:00 - 15:50  ',
                        ),
                        SliderContainer(
                          lineColor: Colors.indigoAccent.shade100,
                          row: [
                            ColoredContainer(
                              buttonColor: Colors.yellow.shade100,
                              buttonText: 'in process',
                              buttonTextColor: Colors.yellow.shade900,
                            )
                          ],
                          imageCount: 4,
                          percent: 0.75,
                          textTime: '   - ',
                          text: 'Send a review to client',
                        ),
                        SliderContainer(
                          lineColor: Colors.red.shade50,
                          row: [
                            ColoredContainer(
                              buttonColor: Colors.cyan.shade50,
                              buttonText: 'New',
                              buttonTextColor: Colors.cyan.shade400,
                            )
                          ],
                          imageCount: 5,
                          percent: 0.5,
                          text: 'Check weekly plan',
                          textTime: ' 09/30/2020  10:00',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
