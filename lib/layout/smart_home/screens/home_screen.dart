import 'package:advanced_task/layout/smart_home/widget/bottom_container.dart';
import 'package:advanced_task/layout/smart_home/widget/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Home',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Alex Today',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: AssetImage(
                            "images/app-to-take-out-photo-background-2.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.deepOrange),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.flash_on_outlined),
                      //Text('⚡'),
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            const Text(
                              '20.3',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'kwh',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                          ],
                        ),
                        Text(
                          'Power Usage for Today ',
                          style: TextStyle(fontSize: 10.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
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
                    ReusableCard(
                      icon: Icons.bathtub_outlined,
                      colorIcon: Colors.white,
                      color: Colors.deepOrange,
                      numOfDevice: '1 device',
                      room: 'Bathroom',
                      textColor: Colors.white,
                    ),
                    ReusableCard(
                      icon: Icons.family_restroom_outlined,
                      room: 'Living room',
                      numOfDevice: '4 device',
                      colorIcon: Colors.deepOrange,
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                    ReusableCard(
                      icon: Icons.kitchen,
                      room: 'Kitchen',
                      numOfDevice: '2 device',
                      colorIcon: Colors.deepOrange,
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                    ReusableCard(
                      icon: Icons.local_dining_rounded,
                      room: 'Dining room',
                      numOfDevice: '1 device',
                      colorIcon: Colors.deepOrange,
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              BottomContainer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 1.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.black12,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.supervisor_account_sharp,
                    // color: Colors.grey,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.flash_on,
                    // color: Colors.grey,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.settings,
                    // color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
