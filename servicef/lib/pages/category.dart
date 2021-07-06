import 'package:flutter/material.dart';
import 'package:servicef/component/mydrawer.dart';

class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nos service"),
        centerTitle: true,
        elevation: 20,
      ),
      drawer: MyDrawer(),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          /// start cat one ////////////////////////
          InkWell(
            child: Card(
                child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "Images/drawer.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Xshoami",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            )),
            onTap: () {
              Navigator.of(context).pushNamed("doctor");
            },
          ),

          /// End cat one /////////////////////////////////
          ///
          /// Start cat 2 //////////////////////////////
          InkWell(
            child: Card(
                child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "Images/drawer.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "One plus",
                  style: TextStyle(fontSize: 18),
                )
              ],
            )),
            onTap: () {},
          ),

          /// End cat 2 /////////////////////////////////
          ///
          /// Start cat 3 //////////////////////////////
          InkWell(
            child: Card(
                child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "Images/drawer.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Text(
                    "Samsung",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            )),
            onTap: () {
              Navigator.of(context).pushNamed("Samsung");
            },
          ),

          /// End cat 3 /////////////////////////////////
          ///
          /// Start cat 4 //////////////////////////////
          InkWell(
            child: Card(
                child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "Images/drawer.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Appel",
                  style: TextStyle(fontSize: 18),
                )
              ],
            )),
            onTap: () {},
          ),

          /// End cat 4 /////////////////////////////////
          ///
          /// Start cat 5 //////////////////////////////
          InkWell(
            child: Card(
                child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "Images/drawer.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Oppo",
                  style: TextStyle(fontSize: 18),
                )
              ],
            )),
            onTap: () {},
          ),

          /// End cat 5 /////////////////////////////////
          ///
          /// Start cat 6//////////////////////////////
          InkWell(
            child: Card(
                child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "Images/drawer.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Condor",
                  style: TextStyle(fontSize: 18),
                )
              ],
            )),
            onTap: () {},
          ),

          /// End cat 6/////////////////////////////////
        ],
      ),
    );
  }
}
