import 'package:flutter/material.dart';
import 'package:spacex/asset/db_icon.dart';

class MainDrawer extends StatelessWidget {
  Widget returnList(
    String? title,
    IconData icon,
    Color color,
    VoidCallback press,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title!,
        style: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onTap: press,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Ahmed M",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (18),
                  ),
                ),
                subtitle: Text(
                  "San Francisco, CA",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (15),
                  ),
                ),
                trailing: Icon(Icons.more_horiz),
              ),
              SizedBox(
                height: 20.0,
              ),
              returnList("Home", Icons.home, Colors.white, () {
                Navigator.of(context).pushReplacementNamed('/');
              }),
              returnList("EXPLORE", Icons.explore, Colors.white, () {
                //Navigator.of(context).pushReplacementNamed(FilterScrean.routeName);
              }),
              SizedBox(
                height: 200.0,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Facebook.facebook, color: Colors.white),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Instagram.instagram,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Twitter.twitter,
                          color: Colors.white,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
