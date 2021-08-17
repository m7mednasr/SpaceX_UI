import 'package:flutter/material.dart';
import 'package:spacex/Screan/luanch.dart';
import 'package:spacex/Widget/page123.dart';

class Dragon extends StatelessWidget{
  static const routename = 'dragon';

  Dragon(String routename);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Launch(
          image: "assets/Dragon.jpg",
          txt1: "Dragon Spacecraft",
          txt2: "SpaceX announced plans to pursue a human-rated commercial space program through the end of the decade",
          txtbtn1: "Back",
          onpressed1: (){
            Navigator.pop(context);
          },
          txtbtn2: "NEXT",
          onpressed2: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Vehicles(Vehicles.routename)));
          },
        ),
      ),
    );
  }
}