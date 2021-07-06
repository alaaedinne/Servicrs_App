import 'package:flutter/material.dart';
import 'package:servicef/component/mydrawer.dart';

class dtdoctor extends StatefulWidget {
  @override
  _dtdoctorState createState() => _dtdoctorState();
}

class _dtdoctorState extends State<dtdoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.report_problem), onPressed: () {}),
          ],
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Icon(
            Icons.favorite,
            size: 30,
          ),
          elevation: 20,
        ),
        body: ListView(children: [
          Padding(padding: EdgeInsets.all(15)),
          Card(
            elevation: 20,
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 50,
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text("@Dehganee",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 50,
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text("0658118268",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 50,
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Expanded(
                        child: Text("dehganuss00@gmail.com",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.black,
            elevation: 20,
            child: Container(
              child: Row(
                children: [
                  Text("Notation :",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    " ******",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
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
                                color: Colors.blue),
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
          SizedBox(
            height: 60,
          ),
          Container(
            height: 30,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text("wwwwwwwwww")),
            ),
          ),
          Container(
            height: 30,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text("wwwwwwwwww")),
            ),
          ),
          Container(
            height: 30,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text("wwwwwwwwww")),
            ),
          ),
          Container(
            height: 30,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text("wwwwwwwwww")),
            ),
          ),
          Container(
            height: 30,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text("wwwwwwwwww")),
            ),
          ),
          Container(
            height: 30,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text("wwwwwwwwww")),
            ),
          )
        ]));
  }
}
