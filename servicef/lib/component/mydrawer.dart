import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              onDetailsPressed: () {},
              accountName: Text("@Dehgane alaa e dinne"),
              accountEmail: Text("dehganuss00@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  image: DecorationImage(
                      image: AssetImage("Images/drawer.jpg"),
                      fit: BoxFit.cover))),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed("home");
            },
          ),
          ListTile(
            title: Text(
              "Service",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.category,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('categories');
            },
          ),
          ListTile(
            title: Text(
              "Favorite",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.favorite,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed("");
            },
          ),
          ListTile(
            title: Text(
              "Paramètre",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed("Profile");
            },
          ),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.info,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('ddetails');
            },
          ),
          ListTile(
            title: Text(
              "Log out",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.login_outlined,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed("first");
            },
          ),
        ],
      ),
    );
  }
}
