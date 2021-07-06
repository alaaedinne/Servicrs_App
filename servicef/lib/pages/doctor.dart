import 'package:flutter/material.dart';
import 'package:servicef/component/mydrawer.dart';

class doctor extends StatefulWidget {
  TextEditingController _idcontroller = TextEditingController();
  @override
  _doctorState createState() => _doctorState();
}

class _doctorState extends State<doctor> {
  var Id = TextEditingController();
  List _specialititem = ['Gènèral', 'Gènèral', 'Gènèral', 'Gènèral', 'Gènèral'];

  var mobilelist = [
    {
      'name': 'A6 plus',
      'camera': ' 5 ميغابيكسل',
      'cpu': 'ثمانى الأنوىة',
      'battery': '5000 mha',
      'memory': '8 GB',
      'price': '1200'
    },
    {
      'name': 'S10 pro',
      'camera': ' 145 ميغابيكسل',
      'cpu': 'ثمانى الأنوىة',
      'battery': '8000 mha',
      'memory': '548 GB',
      'price': '11840'
    },
    {
      'name': 'mate 30 pro',
      'camera': ' 14 ميغابيكسل',
      'cpu': 'ثمانى الأنوىة',
      'battery': '4200 mha',
      'memory': '128 GB',
      'price': '2300'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: Id,
                    decoration: InputDecoration(
                        labelText: "Search By ID",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            print(Id.text);
                          },
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          child: DropdownButton(
                            hint: Text(
                                "Sèlect branch                                "),
                            dropdownColor: Colors.blue,
                            items: null,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        DropdownButton(
                          hint: Text('Sèlect vile'),
                          items: null,
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                      ],
                    )),

                //////////////////////////
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            child: Container(
              height: 160,
              width: 100,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                color: Colors.blueGrey[800],
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.saved_search,
                          size: 80,
                          color: Colors.white,
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.topRight,
                        height: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "Samsung A6 plus",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Row(
                                  children: [
                                    Text(
                                      "Camèra",
                                      style: TextStyle(color: Colors.yellow),
                                    ),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Text(
                                      "data",
                                      style: TextStyle(color: Colors.yellow),
                                    )
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('dtdoctor');
            },
          )
        ],
      ),
    );
  }
}
