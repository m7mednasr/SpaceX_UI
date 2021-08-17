import 'package:flutter/material.dart';
import 'package:spacex/Widget/view12.dart';

class ShipsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Views(
          color: Colors.red,
          txtbtn: "InActive",
          fontWeight: FontWeight.bold,
          onpressed: () {},
          size: 25.0,
          size1: 20.0,
          txt: "GO Pursuit",
          txt2: "Type : Cargo",
          image: "assets/Dragon.jpg",
        ),
        SizedBox(height: 10.0),
        Views(
          color: Colors.green,
          txtbtn: "Active",
          fontWeight: FontWeight.bold,
          onpressed: () {},
          size: 25.0,
          size1: 20.0,
          txt: "CRS-2",
          txt2: "Type : Cargo",
          image: "assets/src2.jpg",
        ),
        SizedBox(height: 10.0),
        Views(
          color: Colors.red,
          txtbtn: "InActive",
          fontWeight: FontWeight.bold,
          onpressed: () {},
          size: 25.0,
          size1: 20.0,
          txt: "SES-8",
          txt2: "First GTO launch....",
          image: "assets/ses8.jpg",
        ),
      ],
    );
  }
}
