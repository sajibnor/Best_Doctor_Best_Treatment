// import 'package:Best_doctor/department.dart';GlobalDept()
import 'package:Best_doctor/eam/enamOnco.dart';
import 'package:Best_doctor/eam/enamWomen.dart';

import 'package:flutter/material.dart';
// import 'package:valid_form/popular/ortho.dart';
import './eameye.dart';
import './ebokhkho.dart';
import './ecardilogy.dart';
import './eephrology.dart';
import './eeuromedici.dart';
import './egynology.dart';
import './elivaroporipak.dart';
import './emaxofecial.dart';
import './enakkan.dart';
import './eneuroserjon.dart';
import './ephysiotherapy.dart';
import './epsycology.dart';
import './enamTransfiotion.dart';
import './erediology.dart';
import './ereumatology.dart';
import './eserjon.dart';
import './esisu.dart';
import './evvd.dart';
import './enamMedicine.dart';
import './enamHistopologyu.dart';
import './enamAntasia.dart';

class EnamHospital extends StatelessWidget {
  // var children1 = ChildrenItem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "এনাম মেডিকেল কলেজ অ্যান্ড হাসপাতাল",
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
                    Text("এনাম মেডিকেল কলেজ অ্যান্ড হাসপাতাল",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: "Balooda",
                            fontWeight: FontWeight.bold)),
                    Text("ঠিকানা:৯/৩ পার্বতী নগর, থানা রোড, সাভার, ঢাকা।",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: "Balooda",
                            fontWeight: FontWeight.bold)),
                    Text("Contact: 01716-358146, 01749-443353",
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
                  itemCount: 23,
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
    "Neuro-Medicine Specialist (নিউরো মেডিসিন বিশেষজ্ঞ)",
    "Cardiology (হূদরোগ)",
    "ENT-specialist(নাক, কান ও গলা রোগ বিশেষজ্ঞ)",
    "Gynecologist (গাইনী, প্রসূতি ও বন্ধ্যত্ব রোগ বিশেষজ্ঞ)",
    "Women Surgery(মহিলা  সার্জন)",
    "Child care specialist (শিশু বিশেষজ্ঞ)",
    // "Orthopedic (হাড় বিশেষজ্ঞ)",

    "General and Laparoscopic surgery(জেনারেল সার্জারি ও ল্যাপারোস্কপিক)",
    "Nephrology (কিডনি)",

    "Hepatology & Gastroenterology (লিভার ও পরিপাকতন্ত্র)",

    // "Hepatology (লিভার ও গলব্লাডার)",
    // "Urology (মূত্রনালী)",
    "Chest Specialist (বক্ষব্যাধি)",

    "Dermatologist, Skin & VD (চর্মরোগ বিশেষজ্ঞ)",

    "Maxillofacial and Dental Surgery(মুখ ও দস্তরোগ বিশেষজ্ঞ)",
    "Transfusion Medicine Specialist (ট্রন্সফিউশন মেডিসিন বিশেষজ্ঞ)",
    "Oncology (ক্যান্সার)",
    "Radiology and Imaging Specialist (রেডিওলজি এন্ড ইমেজিং বিশেষজ্ঞ)",
    "Histopathology Specialist(হিস্টোপ্যাথলজি)",
    "Neuro-Surgery (নিউরো সার্জারি)",
    "Physiotherapy (ফিজিওথেরাপি)",
    "Psychiatrist (মানসিক রোগ বিশেষজ্ঞ)",
    "Eye specialist (চক্ষু বিশেষজ্ঞ)",

    "Rheumatic Fever (বাত জ্বর)",
    "Anesthesiologist & ICU (এনেসথেসিয়া এন্ড আই সি ইউ)"
    // "Nutritionist (পুষ্টিবিদ)"
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
                    .push(MaterialPageRoute(builder: (_) => EnamMedicine()));
              } else if (i == 1) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Enamneuromedicine()));
              } else if (i == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enamcardology()));
              } else if (i == 3) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enamnakkangola()));
              } else if (i == 4) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enamgynoclogy()));
              } else if (i == 5) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EnamWomen()));
              } else if (i == 6) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Sisu()));
              } else if (i == 7) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Serjon()));
              } else if (i == 8) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enephrology()));
              } else if (i == 9) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Enamlivarporipak()));
              } else if (i == 10) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enambokhkhobedi()));
              } else if (i == 11) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Vvd()));
              } else if (i == 12) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Mexofecial()));
              } else if (i == 13) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Transfusion()));
              } else if (i == 14) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EnamOncology()));
              } else if (i == 15) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Rediology()));
              } else if (i == 16) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => EnamHistopathology()));
              } else if (i == 17) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enamneuroserjon()));
              } else if (i == 18) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Physiotherapy()));
              } else if (i == 19) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Psycology()));
              } else if (i == 20) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Eye()));
              } else if (i == 21) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enamreumatology()));
              } else if (i == 22) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Anesthesiologist()));
              }
            },
          )),
    );
  }
}
