import 'package:flutter/material.dart';
import 'package:spacex/asset/db_icon.dart';

class SignUp extends StatefulWidget {
  static const routename = 'signup';
  SignUp(routename);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  bool pass = true;
  bool valuefirst = false;
  bool valuesecond = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.43,
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90.0))),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Full Name',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.red,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(20),
              ),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.red,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(20),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.red,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(20),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: pass,
            ),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                    value: this.valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        this.valuefirst = value!;
                      });
                    },
                  ),
                  Text('Remember me  ',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            SizedBox(height: 30.0),
             InkWell(
              onTap: () {},
              child:  Container(
                //width: 100.0,
                height: 50.0,
                decoration:  BoxDecoration(
                  color: Colors.black,
                  border:  Border.all(color: Colors.white, width: 2.0),
                  borderRadius:  BorderRadius.circular(20.0),
                ),
                child:  Center(
                  child:  Text(
                    'CONTINUE',
                    style: TextStyle(fontSize: 18.0, color: Colors.white ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(

              onTap: (){},
              child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 45.0,
                  decoration:  BoxDecoration(
                    border:  Border.all(color: Colors.red, width: 2.0),
                    borderRadius:  BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Facebook.facebook, color: Colors.red),
                      SizedBox(width: 75.0),
                      Text(
                        'LOGIN WITH FACEBOOK',
                        style: TextStyle(fontSize: 18.0, color: Colors.red ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
