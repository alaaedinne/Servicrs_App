import 'package:flutter/material.dart';
import 'package:servicef/component/mydrawer.dart';

class ddetails extends StatefulWidget {
  @override
  _ddetailsState createState() => _ddetailsState();
}

class _ddetailsState extends State<ddetails> {
  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: ElevatedButton(
        child: Text("data"),
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 18,
          ),
        ),
        onPressed: () {},
      ),
    );
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.report_problem), onPressed: () {}),
          ],
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 45,
            )),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Card(
                  elevation: 20,
                  child: Expanded(
                    child: Text(
                      "Rest 24 personne ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
              ),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ));
  }
}
