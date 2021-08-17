import 'package:flutter/material.dart';

class Launch extends StatelessWidget {
  final String? image;
  final String? txt1;
  final String? txt2;
  final String? txtbtn1;
  final String? txtbtn2;
  final VoidCallback? onpressed1;
  final VoidCallback? onpressed2;

  const Launch(
      {this.image,
      this.txt1,
      this.txt2,
      this.txtbtn1,
      this.txtbtn2,
      this.onpressed1,
      this.onpressed2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          width: 400,
          height: 400,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(image!), fit: BoxFit.fill),
              border: Border.all(color: Colors.grey, width: 15)),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          txt1!,
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          txt2!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: onpressed1,
              child:  Text(
                txtbtn1!,
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: onpressed2,
              child: Text(txtbtn2!, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ],
    );
  }
}
