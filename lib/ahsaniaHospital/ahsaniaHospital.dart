// import 'package:Best_doctor/department.dart';GlobalDept()
import 'package:flutter/material.dart';
import 'ahsaniaOncology.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
            ChildrenItem(0),
            ChildrenItem(1),
            ChildrenItem(2),
            ChildrenItem(3),
            ChildrenItem(4),
            ChildrenItem(5),
            ChildrenItem(6),
          ],
        ),
      ),
    );
  }
}

class ChildrenItem extends StatelessWidget {
  final List dept = [
    'Oncology(ক্যান্সার)',
    "Medicine(মেডিসিন)",
    "General(জেনারেল)",
    "General surgery(জেনারেল সার্জারি)",
    "Gynecologist(গাইনী, প্রসূতি ও বন্ধ্যত্ব রোগ বিশেষজ্ঞ)",
    "Maxillofacial Surgery(ম্যাক্সিলোফেসিয়াল সার্জারি)",
    "Radiology and Imaging Specialist(রেডিওলজি এন্ড ইমেজিং বিশেষজ্ঞ)",
    "ENT- Eye, Ear and Throat specialist(নাক, কান ও গলা রোগ বিশেষজ্ঞ)"
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
                        .push(MaterialPageRoute(builder: (_) => null));
                  }
                },
              ),
            )));
  }
}
