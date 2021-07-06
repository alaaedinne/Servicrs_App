import 'package:flutter/material.dart';

// ignore: camel_case_types
class create_room extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff392850),
      ),
      backgroundColor: Color(0xff392850),
      body: Container(
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Create Room",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, height: 2),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                        hintText: "Entrer un nom",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.home_outlined,
                          size: 35,
                        ))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                        hintText: "Entrer un ID",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.account_box,
                          size: 35,
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: DropdownButton(
                  hint: Text("Selectionne le nombre maximum de person"),
                  dropdownColor: Colors.blue,
                  items: null,
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  color: Colors.blue,
                ),
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
    );
  }
}
