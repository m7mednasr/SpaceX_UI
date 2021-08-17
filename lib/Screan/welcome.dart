import 'package:flutter/material.dart';
import 'package:spacex/Screan/rocket.dart';

class Space extends StatelessWidget {
  static const routename = 'space';
  Space(String routename);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:80.0),
          Image(image: AssetImage("assets/Splash.png")),
          SizedBox(height: 80.0),
          Container(
            alignment: Alignment.bottomRight,
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Second(Second.routename)));
              },
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.arrow_forward,
                ),
              ),
            ),
          )
        ],
      )
      ),
    );
  }
}

