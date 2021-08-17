import 'package:flutter/material.dart';

class Views extends StatelessWidget {
  final String? image;
  final String? txt;
  final double? size;
  final FontWeight? fontWeight;
  final String? txt2;
  final double? size1;
  final String? txtbtn;
  final VoidCallback? onpressed;
  final Color? color;

  const Views(
      {this.image,
      this.txt,
      this.size,
      this.fontWeight,
      this.txt2,
      this.size1,
      this.txtbtn,
      this.onpressed,
      this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(15.0),
      height: MediaQuery.of(context).size.width * 0.40,
      width: MediaQuery.of(context).size.width * 0.92,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0,
            offset: Offset(-4, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image!),
            radius: 30,
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Text(
                txt!,
                style: TextStyle(
                    fontSize: size!,
                    color: Colors.black,
                    fontWeight: fontWeight!),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                txt2!,
                style: TextStyle(
                  fontSize: size1!,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                child: Text(txtbtn!),
                onPressed: onpressed!,
                style: ElevatedButton.styleFrom(
                  primary: color!,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LaunchTab extends StatelessWidget {
  final String? image;
  final String? txt;
  final double? size;
  final FontWeight? fontWeight;
  final String? txt2;
  final double? size1;
  final String? txt3;

  const LaunchTab({
    this.image,
    this.txt,
    this.size,
    this.fontWeight,
    this.txt2,
    this.size1,
    this.txt3,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(15.0),
      height: MediaQuery.of(context).size.width * 0.40,
      width: MediaQuery.of(context).size.width * 0.92,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0,
            offset: Offset(-4, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image!),
            radius: 30,
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Text(
                txt!,
                style: TextStyle(
                    fontSize: size!,
                    color: Colors.black,
                    fontWeight: fontWeight!),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                txt2!,
                style: TextStyle(
                  fontSize: size1!,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                txt3!,
                style: TextStyle(
                  fontSize: size1!,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
