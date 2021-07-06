import 'package:flutter/material.dart';
import 'package:servicef/component/info_card.dart';

const email = "dehganuss00@gmail.com";
const phone = "0658118268";
const location = "Béchar, Algeria";

class doctor_interface extends StatefulWidget {
  @override
  _doctor_interfaceState createState() => _doctor_interfaceState();
}

class _doctor_interfaceState extends State<doctor_interface> {
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
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: const EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blueGrey[700],
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 60,
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
                    text: location,
                    icon: Icons.location_city,
                    onPressed: () async {}),
                InfoCard(
                    text: email, icon: Icons.email, onPressed: () async {}),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    color: Colors.white,
                    elevation: 20,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                              child: Center(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Text(
                                  "Ajoutè un poste",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          )),
                          Padding(padding: EdgeInsets.only(bottom: 8)),
                          TextFormField(
                              controller: TextEditingController(),
                              onFieldSubmitted: (v) {
                                print(v);
                              },
                              decoration: InputDecoration(
                                  labelText: "Name",
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder())),
                          SizedBox(height: 10),
                          TextFormField(
                              controller: TextEditingController(),
                              onFieldSubmitted: (v) {
                                print(v);
                              },
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  labelText: "Phone",
                                  prefixIcon: Icon(Icons.phone),
                                  border: OutlineInputBorder())),
                          SizedBox(height: 10),
                          Container(
                            color: Colors.blue,
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Terminer',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),

                InfoCard(
                    text: "Mohamed El Ahmadi",
                    icon: Icons.person,
                    onPressed: () async {}),

                InfoCard(
                    text: "Mohamed El Ahmadi",
                    icon: Icons.person,
                    onPressed: () async {}),
                InfoCard(
                    text: "Mohamed El Ahmadi",
                    icon: Icons.person,
                    onPressed: () async {}),
                InfoCard(
                    text: "Mohamed El Ahmadi",
                    icon: Icons.person,
                    onPressed: () async {}),
                InfoCard(
                    text: "Mohamed El Ahmadi",
                    icon: Icons.person,
                    onPressed: () async {}),
              ],
            ),
          ),
        ));
  }
}
