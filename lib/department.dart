// import 'dart:collection';

import './specialized/oncology.dart';
import 'package:flutter/material.dart';

import './specialized/medicine.dart';
import './specialized/cardiology.dart';
import './specialized/chest.dart';
import './specialized/child.dart';
import './specialized/ent.dart';
import './specialized/eye.dart';
import './specialized/gynecologist.dart';
import './specialized/maxillofacial.dart';
import './specialized/neoruserjun.dart';
import './specialized/nutritionist.dart';
import './specialized/orthopedic.dart';
import './specialized/skin.dart';
import './specialized/urology.dart';
import './specialized/nephrology.dart';
import './specialized/gastroenterology.dart';
import './specialized/neuroMedicine.dart';
import './specialized/psychiatrist.dart';
import './specialized/radiology.dart';
import './specialized/surgery.dart';
import './specialized/hepatology.dart';
import './eam/ereumatology.dart';
import './dataNotYet.dart';
import './specialized/dibetics.dart';
import './ahsaniaHospital/hematology.dart';

class DepartmeName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Specialized',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white30,
        centerTitle: true,
      ),
      body: Column(
        children: [
          searchTf(),
          Expanded(child: GlobalDept()),
        ],
      ),
    ));
  }
}

Widget searchTf() {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(const Radius.circular(5.0))),
        filled: true,
        hintText: "Enter search speciality...",
        fillColor: Colors.white60,
        contentPadding: EdgeInsets.all(15)),
    onChanged: (string) {
      GlobalDept().toString().toLowerCase();
    },
  );
}

class ChildrenItem extends StatelessWidget {
  // final int index;
  final String departName;
  ChildrenItem(this.departName);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Center(
                  child: Text(departName,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontFamily: "Balooda"))),
            ],
          ),
        ));
  }
}

class GlobalDept extends StatelessWidget {
  final List dept = [
    "Medicine (মেডিসিন)",
    // "General (জেনারেল)",
    "General surgery (জেনারেল সার্জারি)",
    // "Neurology (ব্রেইন ও স্নায়ু)",
    "Neuro-Medicine Specialist (নিউরো মেডিসিন বিশেষজ্ঞ",
    "Neuro-Surgery (নিউরো সার্জারি)",
    "Cardiology (হূদরোগ)",
    "Chest Specialist (বক্ষব্যাধি)",
    "Orthopedic (হাড় বিশেষজ্ঞ)",
    "Eye specialist (চক্ষু বিশেষজ্ঞ)",
    "Oncology (ক্যান্সার)",
    "Gynecologist (গাইনী, প্রসূতি ও বন্ধ্যত্ব রোগ বিশেষজ্ঞ)",
    "Child care specialist (শিশু বিশেষজ্ঞ)",
    // "Pediatric (নবজাতক)",
    "Dental Specialist (দাঁত)",
    "Pulmonology (ফুসফুস)",
    "Nephrology (কিডনি)",
    "Urology (মূত্রনালী)",
    "Dermatologist, Skin & VD (চর্মরোগ বিশেষজ্ঞ)",
    "Burn,Plastic & Cosmetic Surgery (বার্ন,প্লাস্টিক এন্ড কসমেটিক সার্জারি) ",
    "Gastroenterology (পরিপাকতন্ত্র)",
    "Hepatology (লিভার ও গলব্লাডার)",
    "Rheumatic Fever (বাত জ্বর)",
    "Hypertension (উচ্চ রক্ত-চাপ)",
    "Colorectal Surgery (মলাশয় সার্জারি)",
    "Hematology (রক্তরোগ)",
    "Vascular Surgery (রক্তনালী সার্জারি)",
    "Diabetic,Thyroid & Endocrinologist (ডায়াবেটিস,থাইরয়েড & হরমোন  বিশেষজ্ঞ)",

    // "Rheumatic Fever (বাত জ্বর) ",
    "Laparoscopic (ল্যাপারোস্কপিক)",
    "Maxillofacial Surgery (ম্যাক্সিলোফেসিয়াল সার্জারি)",
    // "Gastroenterology (পরিপাকতন্ত্র)",
    "Radiology and Imaging Specialist (রেডিওলজি এন্ড ইমেজিং বিশেষজ্ঞ)",
    "ENT- specialist (নাক, কান ও গলা রোগ বিশেষজ্ঞ)",
    "Physiotherapy (ফিজিওথেরাপি)",
    "Psychiatrist (মানসিক রোগ বিশেষজ্ঞ)",
    "Nutritionist (পুষ্টিবিদ)",
    "COVID-19 (কোভিড-১৯)",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: ListView.builder(
          itemCount: dept.length,
          itemBuilder: (context, int i) => InkWell(
            child: ChildrenItem(dept[i]),
            onTap: () {
              if (i == 0) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Medicine()));
              } else if (i == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Surgery()));
              } else if (i == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => NeuroMedicine()));
              } else if (i == 3) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Neoruserjun()));
              } else if (i == 4) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Cardiology()));
              } else if (i == 5) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Chest()));
              } else if (i == 6) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Orthopedic()));
              } else if (i == 7) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Eye()));
              } else if (i == 8) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Oncology()));
              } else if (i == 9) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Gynecologist()));
              } else if (i == 10) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Child()));
              } else if (i == 11) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Maxillofacial()));
              } else if (i == 12) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              } else if (i == 13) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Nephrology()));
              } else if (i == 14) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Urology()));
              } else if (i == 15) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Skin()));
              } else if (i == 16) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              } else if (i == 17) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Gastroenterology()));
              } else if (i == 18) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Hepatology()));
              } else if (i == 19) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Enamreumatology()));
              } else if (i == 20) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              } else if (i == 21) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              } else if (i == 22) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Hematology()));
              } else if (i == 23) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              } else if (i == 24) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Dibetics()));
              } else if (i == 25) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              } else if (i == 26) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Maxillofacial()));
              } else if (i == 27) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Radiology()));
              } else if (i == 28) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ENT()));
              } else if (i == 29) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              } else if (i == 30) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Psychiatrist()));
              } else if (i == 31) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Nutritionist()));
              } else if (i == 32) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MassegeShow()));
              }
            },
          ),
        )));
  }
}
