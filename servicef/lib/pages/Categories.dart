import 'package:flutter/material.dart';
import 'package:servicef/component/mydrawer.dart';
import 'package:servicef/pages/doctor.dart';

class category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nos service"),
        centerTitle: true,
        elevation: 20,
      ),
      drawer: MyDrawer(),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text('The list item #$index'),
            subtitle: Text('The sub'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => doctor()));
            },
          );
        });
  }
}
