import 'package:flutter/material.dart';
//import 'package:spacex/Screan/welcome.dart';
import 'package:spacex/Screan/Tabs.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/' : (context) => Space(Space.routename)
      // },
      home: Tabs(),
      
    );
  }
}
