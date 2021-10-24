import 'package:advanced_task/layout/smart_device/widgets/event_in%20_day.dart';
import 'package:advanced_task/layout/smart_home/widget/reusable_card.dart';
import 'package:advanced_task/layout/smart_device/widgets/reusable_card_in_smart_device.dart';
import 'package:advanced_task/layout/smart_device/widgets/search_bar.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Text(
                  'Good Morning, Mona',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                trailing: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/pic.jpg'),
                ),
              ),
              EventInDay(),
              Search(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Projects',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0),
                  children: [
                    ReusableCardDevice(
                      text: 'Design Line Up',
                      buttonColor: Colors.red.shade50,
                      buttonText: 'Urgent',
                      buttonTextColor: Colors.red.shade400,
                      percent: 0.85,
                      percentColor: Colors.blue.shade100,
                      percentText: "85%",
                      imageCount: 2,
                    ),
                    ReusableCardDevice(
                      text: 'Finesco',
                      buttonColor: Colors.cyan.shade50,
                      buttonText: 'New',
                      buttonTextColor: Colors.cyan.shade400,
                      percent: 0.17,
                      percentColor: Colors.greenAccent.shade200,
                      percentText: "17%",
                      imageCount: 3,
                    ),
                    ReusableCardDevice(
                      text: 'Wide World',
                      buttonColor: Colors.yellow.shade100,
                      buttonText: 'in process',
                      buttonTextColor: Colors.yellow.shade900,
                      percent: 0.69,
                      percentColor: Colors.purple.shade200,
                      percentText: "69%",
                      imageCount: 4,
                    ),
                    ReusableCardDevice(
                      text: 'Yooki',
                      buttonColor: Colors.lightGreen.shade50,
                      buttonText: 'Done',
                      buttonTextColor: Colors.lightGreen.shade400,
                      percent: 1.0,
                      percentColor: Colors.yellow.shade400,
                      percentText: "100%",
                      imageCount: 6,
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
        bottomNavigationBar: FancyBottomNavigation(
          initialSelection: 1,
          circleColor: Colors.black,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.grey.shade200,
          tabs: [
            TabData(iconData: Icons.home, title: ""),
            // TabData(iconData: Icons.my_library_books_rounded, title: ""),
            TabData(iconData: Icons.add, title: ""),
            TabData(iconData: Icons.book, title: ""),
            TabData(iconData: Icons.person, title: ""),
          ],
          onTabChangedListener: (position) {
            setState(() {
              // currentPage = position;
            });
          },
        ));
  }
}
