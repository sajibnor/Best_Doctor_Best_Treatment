// import 'package:Best_doctor/department.dart';GlobalDept()

import 'package:flutter/material.dart';
import './darthopedics.dart';

import './dcardiology.dart';
import './ddental.dart';
import './ddvv.dart';
import './ddybetic.dart';

import './dgynology.dart';

import './dmedici.dart';
import './dnakkangola.dart';

import './durology.dart';
import './gastroliver.dart';
// import './neuro.dart';

class DipClinic extends StatelessWidget {
  // var children1 = ChildrenItem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "দীপ ক্লিনিক এন্ড ডায়াগনস্টিক সেন্টার",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Balooda",
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white24,
          // elevation: 4,
          // shadowColor: Colors.orange,
        ),
        body: Column(children: [
          SizedBox(
            width: 2,
            height: 2,
          ),
          Card(
            elevation: 3,
            // shadowColor: Colors.amber,
            color: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("দীপ ক্লিনিক এন্ড ডায়াগনস্টিক সেন্টার",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: "Balooda",
                            fontWeight: FontWeight.bold)),
                    Text("ঠিকানা:১/২ পার্বতী নগর, থানা রোড, সাভার, ঢাকা-১৩৪০।",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: "Balooda",
                            fontWeight: FontWeight.bold)),
                    Text("Contact: 01743934070, 01726445903",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: "Balooda",
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            // width: 5,
            height: 2,
          ),
          Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'List of Department :',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.024,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
            height: 2,
          ),
          // Divider(
          //   thickness: 2,
          //   height: 2,
          // ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int i) =>
                      ChildrenItem(i))),
        ]));
  }
}

class ChildrenItem extends StatelessWidget {
  final int i;
  ChildrenItem(this.i);

  final List dept = [
    "Medicine (মেডিসিন)",
    // "Neuro-Medicine Specialist (নিউরো মেডিসিন বিশেষজ্ঞ)",
    "Cardiology (হূদরোগ)",
    "ENT-specialist(নাক, কান ও গলা রোগ বিশেষজ্ঞ)",
    "Gynecologist (গাইনী, প্রসূতি ও বন্ধ্যত্ব রোগ বিশেষজ্ঞ)",
    // "Child care specialist (শিশু বিশেষজ্ঞ)",
    "Orthopedic (হাড় বিশেষজ্ঞ)",
    // "General and Laparoscopic surgery(জেনারেল সার্জারি ও ল্যাপারোস্কপিক)",
    // "Nephrology (কিডনি)",

    "Gastroenterology (পরিপাকতন্ত্র)",
    // "Hepatology (লিভার ও গলব্লাডার)",
    "Urology (মূত্রনালী)",
    // "Chest Specialist (বক্ষব্যাধি)",

    "Dermatologist, Skin & VD (চর্মরোগ বিশেষজ্ঞ)",

    // "Psychiatrist (মানসিক রোগ বিশেষজ্ঞ)",
    "Maxillofacial and Dental Surgery(মুখ ও দস্তরোগ বিশেষজ্ঞ)",
    "Diabetic (ডায়াবেটিস)"
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 2,
      shadowColor: Colors.black,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: Text(dept[i],
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                    fontFamily: "Balooda",
                    fontWeight: FontWeight.bold)),
            onTap: () {
              if (i == 0) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => DM()));
              } else if (i == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Dcardiology()));
              } else if (i == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Dnakkan()));
              } else if (i == 3) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Dgynology()));
              } else if (i == 4) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Darthopedics()));
              } else if (i == 5) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Dgastrology()));
              } else if (i == 6) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Durolpogy()));
              } else if (i == 7) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Ddvv()));
              } else if (i == 8) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Ddental()));
              } else if (i == 9) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Ddyetic()));
              }
            },
          )),
    );
  }
}
