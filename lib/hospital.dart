import 'package:Best_doctor/ahsaniaHospital/ahsaniaHospital.dart';
import 'package:flutter/material.dart';

import 'department.dart';
import 'listbuilder.dart';
import 'ibnsina/ibnsina.dart';
import './popular/popular.dart';

class Hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hospital Name',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white30,
      ),
      body: Column(children: [
        searchTf(),
        Expanded(
          child: ListView.builder(
              itemCount: hospitalName.length,
              itemBuilder: (context, index) {
                return ChildrenItem(index);
                //  Card(
                //   child: InkWell(
                //       splashColor: Colors.blue,
                //       onTap: () => Navigator.of(context)
                //           .push(MaterialPageRoute(builder: (_) =>null)),
                //       child: Center(
                //           child: Text(
                //         hospitalName[index],
                //         style: TextStyle(fontSize: 15),
                //       ))),
                // );
              }),
        )
      ]),
    );
  }
}

class ChildrenItem extends StatelessWidget {
  final int index;
  ChildrenItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.blue[50],
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              splashColor: Colors.yellowAccent,
              onTap: () {
                if (index == 0) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Ahsaniahopital()));
                } else if (index == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => DepartmeName()));
                } else if (index == 2) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ListerBuilderr()));
                } else if (index == 8) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Ibnsina()));
                } else if (index == 11) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Popular()));
                }
              },
              child: Center(
                  child: Text(hospitalName[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontFamily: "Balooda"))),
            )));
  }
}

List hospitalName = [
  'Ahsania Mission Cancer & General Hospital',
  'Apollo Hospitals Dhaka',
  'Azhar Hospital & Diagnostics Center',
  "Bela Specialized Therapy & Rehabilitation Center",
  "Deep Clinic & Diagnostic Center",
  "Enam Medical College and Hospital",
  'Health AID Diagnostics Center',
  'Islampur General Hospital',
  "Ibn Sina Diagnostic & Consultation Center",
  'Labaid Specialized Hospital',
  "New Dip Clinic",
  "Popular Diagnostic Center Ltd.",
  "Savar Prime Hospital Limited",
  "Savar Care Hospital",
  "Seba Clinic & Diagnostic Centre",
  "Savar Specialized Hospital.",
  "Savar Crown Hospital and Diagnostic Centre",
  "Super Medical Hospital",
  "Savar Eye Hospital & Phaco Center"
];
Widget searchTf() {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(const Radius.circular(5.0))),
        filled: true,
        hintText: "Enter search hospital ....",
        fillColor: Colors.white60,
        contentPadding: EdgeInsets.all(15)),
    onChanged: (string) {
      GlobalDept().toString().toLowerCase();
    },
  );
}
