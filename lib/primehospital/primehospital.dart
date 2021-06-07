// import 'package:Best_doctor/department.dart';GlobalDept()
import 'package:Best_doctor/popular/gestolyandliver.dart';
import 'package:flutter/material.dart';
import './parthopedics.dart';
import './pcardiology.dart';
import './pdybetic.dart';
import './peuroserjery.dart';
import './peyeent.dart';
import './pgastroliver.dart';
import './pgeneralserjon.dart';
import './pgyniclogy.dart';
import './pmedici.dart';
import './ppsycology.dart';
import './ppusti.dart';
import './prediology.dart';
import './psisu.dart';
import './purology.dart';
import './pvvd.dart';
// import './neuro.dart';

class PrimeHospital extends StatelessWidget {
  // var children1 = ChildrenItem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "সাভার প্রাইম হাসপাতাল ",
            style: TextStyle(color: Colors.black),
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
                    Text("সাভার প্রাইম হাসপাতাল ",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: "Balooda",
                            fontWeight: FontWeight.bold)),
                    Text("ঠিকানা : এ/৮৯,থানা রোড,সাভার,ঢাকা",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: "Balooda",
                            fontWeight: FontWeight.bold)),
                    Text("Contact:01752561542,01856413153",
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
                  itemCount: 13,
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
    "Neuro-Surgery (নিউরো সার্জারি)",
    "Cardiology (হূদরোগ)",
    "ENT- Eye, Ear and Throat specialist(নাক, কান ও গলা রোগ বিশেষজ্ঞ)",
    "Gynecologist (গাইনী, প্রসূতি ও বন্ধ্যত্ব রোগ বিশেষজ্ঞ)",
    "Child care specialist (শিশু বিশেষজ্ঞ)",
    "Orthopedic (হাড় বিশেষজ্ঞ)",
    "General and Laparoscopic surgery(জেনারেল সার্জারি ও ল্যাপারোস্কপিক)",
    // "Nephrology (কিডনি)",

    "Gastroenterology (পরিপাকতন্ত্র)",
    // "Hepatology (লিভার ও গলব্লাডার)",
    "Urology (মূত্রনালী)",
    // "Chest Specialist (বক্ষব্যাধি)",

    "Dermatologist, Skin & VD (চর্মরোগ বিশেষজ্ঞ)",

    "Psychiatrist (মানসিক রোগ বিশেষজ্ঞ)",
    // "Maxillofacial and Dental Surgery(মুখ ও দস্তরোগ বিশেষজ্ঞ)",
    "Nutritionist (পুষ্টিবিদ)",
    "Diabetic (ডায়াবেটিস)",
    "Radiology and Imaging Specialist (রেডিওলজি এন্ড ইমেজিং বিশেষজ্ঞ)"
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
                        .push(MaterialPageRoute(builder: (_) => PM()));
                  } else if (i == 1) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Pneuroserjary()));
                  } else if (i == 2) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Pcardiology()));
                  } else if (i == 3) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Pnakkangola()));
                  } else if (i == 4) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Pgyno()));
                  } else if (i == 5) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Psisu()));
                  } else if (i == 6) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Parthopedics()));
                  } else if (i == 7) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Pserjon()));
                  } else if (i == 8) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Pgestroliver()));
                  } else if (i == 9) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Pmutro()));
                  } else if (i == 10) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Pvvd()));
                  } else if (i == 11) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Ppsycology()));
                  } else if (i == 12) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Ppust()));
                  } else if (i == 13) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Pdyvetic()));
                  } else if (i == 13) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Prediology()));
                  }
                })));
  }
}
