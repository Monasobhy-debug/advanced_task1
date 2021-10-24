import 'package:advanced_task/layout/smart_device/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'layout/smart_home/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.deepPurple),
        ),
      ),
      home: Home(),
    );
  }
}
