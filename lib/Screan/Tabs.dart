import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:spacex/Screan/derwer.dart';
import 'package:spacex/Widget/Launch_Widget.dart';
import 'package:spacex/Widget/dragon_widget.dart';
import 'package:spacex/Widget/ships_widget.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "SapceX",
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(90.0),
                topLeft: Radius.circular(90.0))),
        child: ContainedTabBarView(
          tabs: [
            Text('Dragons' , style: TextStyle(
              color: Colors.black , fontSize: 20.0
            ),),
            Text('Launches', style: TextStyle(
              color: Colors.black , fontSize: 20.0
            ),),
            Text('Ships', style: TextStyle(
              color: Colors.black , fontSize: 20.0
            ),),
          ],
          views: [Container(
            child: SingleChildScrollView(child: DragonWidget()),
          ),
           Container(
             child: SingleChildScrollView(child: LaunchWidget(),),
           ),
           Container(
             child: SingleChildScrollView(child: ShipsWidget(),)
           )
           ],
          onChange: (index) => print(index),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
