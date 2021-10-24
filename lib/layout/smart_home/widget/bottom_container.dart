import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 15.0,
              ),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                      image: AssetImage(
                        "images/pic.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.deepOrange),
              ),
              SizedBox(
                width: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Worry About Me',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Welcome to my Home this is my fav song ',
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 18.0,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.deepOrange),
                  child: Icon(
                    Icons.pause,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
        // ListTile(
        //   leading: Container(
        //     width: 50.0,
        //     height: 50.0,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(5.0),
        //         image: DecorationImage(
        //           image: AssetImage(
        //             "images/pic.jpg",
        //           ),
        //           fit: BoxFit.fill,
        //         ),
        //         color: Colors.deepOrange),
        //   ),
        //   title: Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 15.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           'Worry About Me',
        //           style: TextStyle(
        //               fontSize: 15.0,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.white),
        //         ),
        //         SizedBox(
        //           height: 10.0,
        //         ),
        //         Text(
        //           'Welcome to my Home this is my fav song ',
        //           style: TextStyle(
        //               fontSize: 10.0,
        //               color: Colors.grey,
        //               fontWeight: FontWeight.w400),
        //         ),
        //       ],
        //     ),
        //   ),
        //   subtitle: Padding(
        //     padding: const EdgeInsets.all(12.0),
        //     child: Icon(
        //       Icons.favorite_border,
        //       color: Colors.white,
        //     ),
        //   ),
        //
        //   trailing: Container(
        //     width: 30.0,
        //     height: 30.0,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(5.0),
        //         color: Colors.deepOrange),
        //     child: Icon(
        //       Icons.pause,
        //       size: 15.0,
        //       color: Colors.white,
        //     ),
        //   ),
        //   // CircleAvatar(
        //   //   radius: 20.0,
        //   //   backgroundColor: Colors.deepOrange,
        //   // ),
        // ),
        );
  }
}
