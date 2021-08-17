import 'package:flutter/material.dart';
import 'package:spacex/Sign/signup.dart';
import 'package:spacex/Widget/page123.dart';

class Vehicles extends StatelessWidget {
static const routename = 'vehicles';

  Vehicles(String routename);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Launch(
          image: "assets/luanch.jpg",
               txt1: "Launch Vehicles",
          txt2: "Falcon 1 was a small rocket capable of placing several hundred kilograms into low Earth orbit",
          txtbtn1: "Back",
          onpressed1: (){
            Navigator.pop(context);
          },
          txtbtn2: "Finish",
          onpressed2: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SignUp(SignUp.routename)));
          },

        ),
      ),
    );
  }
}