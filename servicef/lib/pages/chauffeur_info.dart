import 'package:flutter/material.dart';
import 'package:servicef/component/info_card.dart';

const email = "dehganuss00@gmail.com";
const phone = "0658118268";
const location = "Béchar, Algeria";
bool ss = true;

// ignore: camel_case_types
class chauffeur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ss == true)
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mark_chat_unread,
                    size: 35,
                    color: Colors.white,
                  ))
            else
              SizedBox(),
            SizedBox(
              height: 60,
            ),
            Expanded(
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
                      text: phone, icon: Icons.phone, onPressed: () async {}),

                  InfoCard(
                      text: location, icon: Icons.room, onPressed: () async {}),
                  InfoCard(
                      text: email, icon: Icons.email, onPressed: () async {}),
                  SizedBox(height: 40),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Refuse',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    color: Colors.green[500],
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("accept");
                      },
                      child: Text(
                        'Accept',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
