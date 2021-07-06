import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Rooms",
      subtitle: "March, Wednesday",
      event: "3 Events",
      go: () {},
      icon: Icon(
        Icons.house,
        size: 45,
        color: Colors.yellow,
      ));

  Items item2 = new Items(
    title: "Transport",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    go: () {},
    icon: Icon(
      Icons.car_rental,
      size: 45,
      color: Colors.lightGreen,
    ),
  );
  Items item3 = new Items(
    title: "Favorite",
    subtitle: "",
    event: "Rose favirited your Post ",
    go: () {},
    icon: Icon(
      Icons.favorite,
      size: 45,
      color: Colors.red,
    ),
  );

  Items item4 = new Items(
    title: "Rèservation",
    subtitle: "Homework, Design",
    event: "4 Items",
    go: () {},
    icon: Icon(
      Icons.dashboard,
      size: 45,
      color: Colors.blueAccent,
    ),
  );
  Items item5 = new Items(
    title: "Connect As Employèè",
    subtitle: "Lucy Mao going to Office",
    event: "",
    go: () {},
    icon: Icon(
      Icons.logout,
      color: Colors.blue,
      size: 45,
    ),
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    go: () {},
    icon: Icon(
      Icons.settings,
      color: Colors.amberAccent,
      size: 45,
    ),
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    item1.go = () {
      Navigator.of(context).pushNamed('ddetails');
    };
    item2.go = () {
      Navigator.of(context).pushNamed('transport');
    };
    item3.go = () {
      Navigator.of(context).pushNamed('selectroom');
    };
    item5.go = () {
      Navigator.of(context).pushNamed('employe_type');
    };

    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return InkWell(
              onTap: data.go,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    data.icon,
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.subtitle,
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.event,
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  Icon icon;
  Function go;
  Items({this.title, this.subtitle, this.event, this.icon, this.go});
}
