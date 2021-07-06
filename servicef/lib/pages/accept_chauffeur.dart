import 'package:flutter/material.dart';
import 'package:servicef/component/info_card.dart';

const phone = "0658118268";

// ignore: camel_case_types
class accepted_chauffeur extends StatefulWidget {
  @override
  _accepted_chauffeurState createState() => _accepted_chauffeurState();
}

// ignore: camel_case_types
class _accepted_chauffeurState extends State<accepted_chauffeur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff392850),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Color(0xff392850),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " The Driver Information",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
          SizedBox(
            height: 80,
          ),
          Text(
            " Help Me Score The Driver",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 20,
              color: Color(0xffa29a80),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Note... !",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: MaterialButton(
                      color: Colors.amber,
                      onPressed: () {
                        Navigator.of(context).pushNamed("homescreen");
                      },
                      child: Text(
                        'Terminer',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
