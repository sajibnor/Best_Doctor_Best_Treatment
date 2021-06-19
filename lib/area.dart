import 'package:flutter/material.dart';

import './ahsaniaHospital/ahsaniaHospital.dart';
import './carehospital/careHospital.dart';
import './crawnhospital/crawnhospital.dart';
import './dipclinic/diphospital.dart';
import './eam/enamhospital.dart';
import './seba/sebahospital.dart';
import './ibnsina/ibnsina.dart';
import './popular/popular.dart';
import './primehospital/primehospital.dart';
import './specilized_hospital/specilizedhospital.dart';
import './dataNotYet.dart';

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
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[1],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[2],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[3],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[4],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[5],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[6],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[7],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[8],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[9],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[10],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[11],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ErrorMassage()
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
              ErrorMassage()
            ],
          ),
          ExpansionTile(
            title: Text(
              aredata[14],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              ChildrenItem(13)
            ],
          ),
        ]))));
  }
}

class ErrorMassage extends StatelessWidget {
  const ErrorMassage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "No data yet!!",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
          ),
        ),
      ),
    );
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
                      .push(MaterialPageRoute(builder: (_) => MassegeShow()));
                } else if (index == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => DipClinic()));
                } else if (index == 2) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => EnamHospital()));
                } else if (index == 3) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Ibnsina()));
                } else if (index == 4) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MassegeShow()));
                } else if (index == 5) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Popular()));
                } else if (index == 6) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CareHospital()));
                } else if (index == 7) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MassegeShow()));
                } else if (index == 8) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => PrimeHospital()));
                } else if (index == 9) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CrownHospital()));
                } else if (index == 10) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MassegeShow()));
                } else if (index == 11) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SavarSpecilized()));
                } else if (index == 12) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SebaHospital()));
                } else if (index == 13) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Ahsaniahopital()));
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
  "Ahsania Mission Cancer & General Hospital",
];

// creator sajib mridha
// List data;
// Future loadJsonData() async {
//   var jsonText = await rootBundle.loadString('lab/data.json');

//   data = json.decode(jsonText);
// }
