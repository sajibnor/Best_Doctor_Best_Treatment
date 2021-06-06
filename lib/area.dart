import 'package:flutter/material.dart';
import 'savar.dart';

// import 'aria_name.dart';

class AreListname extends StatelessWidget {
  final List aredata = [
    'Badda',
    'Biman Bandar',
    'Bosandhara',
    'Dhamrai',
    'Dhanmondi',
    'Khilkhet',
    'Keraniganj',
    'Gazipur',
    'Gulshan',
    'Mirpur',
    'Mohammadpur',
    'Motijheel',
    'Savar',
    'Shahbagh',
    'Uttara',
    'Rampura ',
  ];
  final int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue[0],
        appBar: AppBar(
          title: Text(
            'Area base hospital',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white38,
          centerTitle: true,
        ),
        body: SafeArea(
            child: Container(
                child: ListView(children: [
          ExpansionTile(
            backgroundColor: Colors.deepOrange[00],
            title: Text(
              aredata[0],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 2)),
              ChildrenItem(0),
              ChildrenItem(1),
              ChildrenItem(2),
              ChildrenItem(3),
              ChildrenItem(4),
              ChildrenItem(5),
              ChildrenItem(6),
              ChildrenItem(7),
              ChildrenItem(8),
              ChildrenItem(9),
              ChildrenItem(10),
              ChildrenItem(11),
              ChildrenItem(12),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[1],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[2],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[3],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[4],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[5],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[6],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[7],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[8],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[9],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[10],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[11],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[12],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(0),
              ChildrenItem(1),
              ChildrenItem(2),
              ChildrenItem(3),
              ChildrenItem(4),
              ChildrenItem(5),
              ChildrenItem(6),
              ChildrenItem(7),
              ChildrenItem(8),
              ChildrenItem(9),
              ChildrenItem(10),
              ChildrenItem(11),
              ChildrenItem(12),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[13],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[14],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(4),
              ChildrenItem(4),
            ],
          ),
        ]))));
  }
}

class ChildrenItem extends StatelessWidget {
  final int index;
  ChildrenItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white70,
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {
                if (index == 0) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AreName()));
                }
              },
              child: Center(
                  child: Text(hospitalName[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ))),
            )));
  }
}

List hospitalName = [
  "Bela Specialized Therapy & Rehabilitation Center",
  "Deep Clinic & Diagnostic Center",
  "Enam Medical College and Hospital",
  "Ibn sina diagnostic & Consultation Center",
  "New Dip Clinic",
  "Popular Diagnostic Center Ltd.",
  "Savar Care Hospital",
  "Savar Eye Hospital & Phaco Center",
  "Savar Prime Hospital Limited",
  "Savar Crown Hospital and Diagnostic Centre",
  "Super Medical Hospital",
  "Savar Specialized Hospital.",
  "Seba Clinic & Diagnostic Centre",
];
// List data;
// Future loadJsonData() async {
//   var jsonText = await rootBundle.loadString('lab/data.json');

//   data = json.decode(jsonText);
// }
