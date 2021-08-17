import 'package:flutter/material.dart';
import 'package:spacex/Widget/view12.dart';

class LaunchWidget extends StatelessWidget {
  const LaunchWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LaunchTab(
          fontWeight: FontWeight.bold,
          image: "assets/ses8.jpg",
          size1: 20.0,
          size: 25.0,
          txt: "FlaconSat",
          txt2: "Engine failure at 33 .....",
          txt3: "2006-03-25",
        ),
        SizedBox(height: 10.0),
        LaunchTab(
          fontWeight: FontWeight.bold,
          image: "assets/src2.jpg",
          size1: 20.0,
          size: 25.0,
          txt: "CRS-2",
          txt2: "Last launch of the original",
          txt3: "2013-03-01",
        ),
         SizedBox(height: 10.0),
        LaunchTab(
          fontWeight: FontWeight.bold,
          image: "assets/ses8.jpg",
          size1: 20.0,
          size: 25.0,
          txt: "SES-8",
          txt2: "First GTO launch....",
          txt3: "2006-03-25",
        ),
      ],
    );
  }
}