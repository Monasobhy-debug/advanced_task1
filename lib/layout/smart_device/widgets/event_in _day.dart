import 'package:flutter/material.dart';

class EventInDay extends StatelessWidget {
  const EventInDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 140.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 5.0)
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '25',
                    style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'September',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Up Next',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 15.0,
                          width: 3.0,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 90.0,
                          child: Text(
                            'Meeting lunch with james Strobinsty',
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.more_vert_sharp,
                          size: 20,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 15.0,
                          width: 3.0,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 90.0,
                          child: Text(
                            'Dave\'s birthday party',
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.more_vert_sharp,
                          size: 20,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
