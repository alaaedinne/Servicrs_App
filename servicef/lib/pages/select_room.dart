import 'package:flutter/material.dart';

// ignore: camel_case_types
class select_room extends StatefulWidget {
  @override
  _select_roomState createState() => _select_roomState();
}

// ignore: camel_case_types
class _select_roomState extends State<select_room> {
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
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(
              'The list item #$index',
              style: TextStyle(color: Colors.blue[300], fontSize: 20),
            ),
            subtitle: Text(
              'The sub',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('dtdoctor');
            },
          );
        });
  }
}
