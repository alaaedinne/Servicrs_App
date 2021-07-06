import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[50],
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Card(
                  elevation: 20,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed("employeprofile");
                    },
                    title: Row(
                      children: [
                        Icon(
                          Icons.business_center_sharp,
                          color: Colors.blue[900],
                          size: 152,
                        ),
                        Expanded(child: Text("data"))
                      ],
                    ),
                    subtitle: Text(
                      "Employé",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue[900], fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 140),
                child: Card(
                  elevation: 20,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed("userspage");
                    },
                    title: Row(
                      children: [
                        Icon(
                          Icons.person_outline_sharp,
                          color: Colors.blue[900],
                          size: 152,
                        ),
                        Expanded(child: Text("data"))
                      ],
                    ),
                    subtitle: Text(
                      "Clients",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue[900], fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
