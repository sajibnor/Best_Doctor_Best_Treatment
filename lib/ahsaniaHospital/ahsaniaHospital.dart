// import 'package:Best_doctor/department.dart';GlobalDept()
import 'package:flutter/material.dart';
import 'ahsaniaOncology.dart';
import './hematology.dart';
import './cardio.dart';
import './child.dart';
import './ent.dart';
import './gynology.dart';

import './mexi.dart';
import './ortho.dart';
import './urology.dart';

class Ahsaniahopital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A M C G H",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white30,
        // elevation: 4,
        // shadowColor: Colors.orange,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              color: Colors.white70,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Address :Uttara-10,\n(West Side Of Bishaw Istema Field,\nClose To IUBAT Versity),Dhaka,Bangladesh\nHotline: 10617\nFor Serial: 01531-291810, 09678016391, 55092140,Ext-666',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
            height: 3,
          ),
          Card(
            color: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'List of Department :',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int i) =>
                      ChildrenItem(i))),
        ],
      ),
    );
  }
}

class ChildrenItem extends StatelessWidget {
  final List dept = [
    'Oncology(ক্যান্সার)',
    "ENT(নাক, কান ও গলা রোগ বিশেষজ্ঞ)",
    "Hematology (রক্তরোগ)",
    "Cardiology (হূদরোগ)",
    "Gynecologist(গাইনী, প্রসূতি ও বন্ধ্যত্ব রোগ বিশেষজ্ঞ)",
    "Child specialist (শিশু বিশেষজ্ঞ)",
    "Orthopedic (হাড় বিশেষজ্ঞ)",
    "Maxillofacial Surgery(ম্যাক্সিলোফেসিয়াল সার্জারি)",
    "Urology (মূত্রনালী)",
  ];
  // final int index;
  final int i;
  ChildrenItem(this.i);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white70,
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: InkWell(
                child: Text(dept[i],
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontFamily: "Balooda",
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  if (i == 0) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Oncology()));
                  } else if (i == 1) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Ent()));
                  } else if (i == 2) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Hematology()));
                  } else if (i == 3) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Cardiology()));
                  } else if (i == 4) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Gynology()));
                  } else if (i == 5) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Child()));
                  } else if (i == 6) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Orthopadics()));
                  } else if (i == 7) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Maxillofacial()));
                  } else if (i == 8) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Urology()));
                  }
                },
              ),
            )));
  }
}
