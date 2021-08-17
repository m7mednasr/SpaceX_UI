import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  static const routename = 'profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController myController = TextEditingController();
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();
  Widget pro(
    String? title,
    double? size,
    FontWeight weight,
  ) {
    return Text(
      title!,
      style: TextStyle(fontSize: size, color: Colors.black, fontWeight: weight),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.35,
            child: Text(
              "Profile",
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90.0))),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                pro("Company Name :", 18.0, FontWeight.w500),
                SizedBox(
                  height: 10.0,
                ),
                pro("Founder: Elon Musk", 20.0, FontWeight.w700),
                SizedBox(
                  height: 10.0,
                ),
                pro("ceo : Elon Musk", 20.0, FontWeight.w700),
                SizedBox(
                  height: 10.0,
                ),
                pro("cto_propulsion : Tom Mueller", 20.0, FontWeight.w700),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    pro("Summary : ", 20.0, FontWeight.w700),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 270.0,
                      color: Colors.grey[100],
                      child: TextField(
                        controller: myController,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 1.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                pro("Address :", 25.0, FontWeight.w700),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    pro("Address :", 25.0, FontWeight.w700),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 270.0,
                      color: Colors.grey[100],
                      child: TextField(
                        controller: myController1,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    pro("City         :", 25.0, FontWeight.w700),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 270.0,
                      color: Colors.grey[100],
                      child: TextField(
                        controller: myController2,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(children: [
                  pro("State       :", 25.0, FontWeight.w700),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 270.0,
                    color: Colors.grey[100],
                    child: TextField(
                      controller: myController3,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ]),
                SizedBox(height: 15.0),
                Container(
                  height: 1.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                pro("Links :", 25.0, FontWeight.w700),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    pro("website :", 20.0, FontWeight.w600),
                    SizedBox(
                      width: 15.0,
                    ),
                    InkWell(
                      onTap: () async {
                        const url =
                            'https://www.facebook.com/khaled.elhashash.5';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            'FaceBook Account',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    pro("website :", 20.0, FontWeight.w600),
                    SizedBox(
                      width: 15.0,
                    ),
                    InkWell(
                      onTap: () async {
                        const url1 = 'https://twitter.com/KElhashash';
                        if (await canLaunch(url1)) {
                          await launch(url1);
                        } else {
                          throw 'Could not launch $url1';
                        }
                      },
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            'Twitter Account',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ])));
  }
}
