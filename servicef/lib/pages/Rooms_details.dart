import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
var Id = TextEditingController();

// ignore: camel_case_types
class rooms extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Choose Your Room",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: TextFormField(
                  controller: Id,
                  decoration: InputDecoration(
                      labelText: "Search By ID",
                      labelStyle: TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          print(Id.text);
                          Navigator.of(context).pushNamed('selectroom');
                        },
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
