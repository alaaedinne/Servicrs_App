import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:servicef/component/info_card.dart';

// ignore: camel_case_types
class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

const email = "dehganuss00@gmail.com";
const phone = "0658118268";
const location = "Béchar, Algeria";

// ignore: camel_case_types
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        backgroundColor: Colors.blueGrey[800],
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('createroom');
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.amber),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add),
                Text(
                  "Create Room",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: const EdgeInsets.only(top: 100),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blueGrey[700],
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  "Dehgane Alaa E dinne",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[200],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                SizedBox(
                  height: 80,
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

                // we will be creating a new widget name info carrd

                InfoCard(
                  text: phone,
                  icon: Icons.phone,
                ),

                InfoCard(
                    text: location, icon: Icons.room, onPressed: () async {}),
                InfoCard(
                    text: email, icon: Icons.email, onPressed: () async {}),
                SizedBox(height: 40),
              ],
            ),
          ),
        ));
  }
}
