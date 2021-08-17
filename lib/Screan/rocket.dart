import 'package:flutter/material.dart';
import 'package:spacex/Screan/dragon.dart';
import 'package:spacex/Sign/signup.dart';

import 'package:spacex/Widget/page123.dart';

class Second extends StatelessWidget {
  static const routename = 'second';

  Second(String routename);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Launch(
          image: "assets/6_12.jpg",
          txt1: "Rocket engines",
          txt2: "The company has developed three families of rocket engines",
          txtbtn1: "SKIP",
          onpressed1: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SignUp(SignUp.routename)));
          },
          txtbtn2: "NEXT",
          onpressed2: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Dragon(Dragon.routename)));
          },
        )
      ),
    );
  }
}



