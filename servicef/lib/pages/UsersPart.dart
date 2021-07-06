import 'package:flutter/material.dart';
import 'package:servicef/component/mydrawer.dart';

class UsersPart extends StatefulWidget {
  @override
  _UsersPartState createState() => _UsersPartState();
}

class _UsersPartState extends State<UsersPart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          elevation: 40,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(child: Image.asset("Images/drawer.jpg")),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Service rapide :",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(40)),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(
                                fontSize: 25,
                              ),
                              padding: EdgeInsets.all(10)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.taxi_alert,
                            size: 40,
                          ),
                          label: Text("data")),
                      Padding(padding: EdgeInsets.all(10)),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                              fontSize: 25,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.phone,
                            size: 30,
                          ),
                          label: Text("data")),
                    ],
                  ),
                  ///////////////////////////////////////

                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Tous les services :",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ///////////////////////////////////////////////////
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Samsung",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "One pluss",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Appel",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "oppo",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Xshaomi",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Condor",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ///////////////////////////////////////////
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "service speciale :",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ///////////////////////////////////////////////////
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Samsung",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "One pluss",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Appel",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "oppo",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Xshaomi",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Condor",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ///////////////////////////////////////////////
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "service speciale :",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ///////////////////////////////////////////////////
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Samsung",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "One pluss",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Appel",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "oppo",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Xshaomi",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                            title: Image.asset(
                              'Images/drawer.jpg',
                              width: 80,
                              height: 100,
                            ),
                            subtitle: Text(
                              "Condor",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //////////////////////////////////////////////
                ],
              ),
            ),
          ],
        ));
  }
}
