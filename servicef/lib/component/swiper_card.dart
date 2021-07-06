import 'package:flutter/material.dart';

class swipper_card extends StatelessWidget {
  // the values we need
  final String text;
  final IconData icon;
  final IconData icon2;
  Function onPressed;
  Function go;

  swipper_card(
      {@required this.text,
      @required this.icon,
      @required this.onPressed,
      this.icon2,
      this.go});

  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
            color: Color(color), borderRadius: BorderRadius.circular(35)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                flex: 1,
                child: Icon(
                  icon,
                  size: 60,
                  color: Colors.blue,
                )),
            Expanded(
                flex: 2,
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                )),
            IconButton(
                icon: Icon(
                  icon2,
                  color: Colors.blue,
                ),
                onPressed: go),
          ]),
        ));
  }
}
