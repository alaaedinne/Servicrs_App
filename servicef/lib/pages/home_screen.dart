import 'package:flutter/material.dart';
import 'package:servicef/component/grid_ui.dart';

// ignore: camel_case_types
class Home_screen extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Your Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Color(0xffa29aac),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Profile');
                    },
                    alignment: Alignment.topCenter,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashboard(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
