import 'package:flutter/material.dart';

class employeprofile extends StatefulWidget {
  @override
  _employeprofileState createState() => _employeprofileState();
}

class _employeprofileState extends State<employeprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Connect as user"),
              leading: Icon(
                Icons.verified_user,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.of(context).pushNamed("first");
              },
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(
                Icons.login_outlined,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.of(context).pushNamed("first");
              },
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Dehganee"),
                          leading: Icon(Icons.person),
                        ),
                        Divider(
                          height: 15,
                          color: Colors.black,
                          endIndent: 50,
                          indent: 50,
                        ),
                        ListTile(
                          title: Text("0658118268"),
                          leading: Icon(Icons.phone),
                        ),
                        Divider(
                          height: 15,
                          color: Colors.black,
                          endIndent: 50,
                          indent: 50,
                        ),
                        ListTile(
                          title: Text("dehganuss00@gmail.com"),
                          leading: Icon(Icons.mail),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.of(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    child: Text("Notation: ******"),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Container(
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Text(
                          "Create a room",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: TextField(
                              controller: null,
                              decoration: InputDecoration(
                                  hintText: "Entrer un nom",
                                  icon: Icon(Icons.home_outlined))),
                        ),
                        Container(
                          child: TextField(
                              controller: null,
                              decoration: InputDecoration(
                                  hintText: "Entrer un ID",
                                  icon: Icon(Icons.account_box))),
                        ),
                        Container(
                          child: DropdownButton(
                            hint:
                                Text("Selectionne le nombre maximum de person"),
                            dropdownColor: Colors.blue,
                            items: null,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Terminer",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  child: Text(
                    "Your rooms :",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Container(
                  width: 380,
                  child: Card(
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Name of room : ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Example"),
                            leading: Icon(Icons.home_outlined),
                          ),
                          ListTile(
                            title: Text(
                              "ID :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Example"),
                            leading: Icon(Icons.account_box),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _show_message() {}
