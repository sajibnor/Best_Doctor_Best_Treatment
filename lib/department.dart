// import 'dart:collection';

import 'package:flutter/material.dart';

import 'hospital.dart';
import 'listbuilder.dart';
import './dipokhospital.dart';
// import './ibnsina.dart';

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
    "General (জেনারেল)",
    "General surgery (জেনারেল সার্জারি)",
    "Neurology (ব্রেইন ও স্নায়ু)",
    "Neuro-Medicine Specialist (নিউরো মেডিসিন বিশেষজ্ঞ",
    "Neuro-Surgery (নিউরো সার্জারি)",
    "Cardiology (হূদরোগ)",
    "Chest Specialist (বক্ষব্যাধি)",
    "Orthopedic (হাড় বিশেষজ্ঞ)",
    "Eye specialist (চক্ষু বিশেষজ্ঞ)",
    "Oncology (ক্যান্সার)",
    "Gynecologist (গাইনী, প্রসূতি ও বন্ধ্যত্ব রোগ বিশেষজ্ঞ)",
    "Child care specialist (শিশু বিশেষজ্ঞ)",
    "Pediatric (নবজাতক)",
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
    "Colorectal Surgery (মলাশয় সার্জারি) ",
    "Hematology (রক্তরোগ)",
    "Vascular Surgery (রক্তনালী সার্জারি)",
    "Endocrinologist (হরমোন  বিশেষজ্ঞ)",
    "Thyroid (থাইরয়েড বিশেষজ্ঞ)",
    "Rheumatic Fever (বাত জ্বর) ",
    "Laparoscopic (ল্যাপারোস্কপিক)",
    "Maxillofacial Surgery (ম্যাক্সিলোফেসিয়াল সার্জারি)",
    "Diabetic (ডায়াবেটিস)",
    "Gastroenterology (পরিপাকতন্ত্র)",
    "Radiology and Imaging Specialist (রেডিওলজি এন্ড ইমেজিং বিশেষজ্ঞ)",
    "ENT- Eye, Ear and Throat specialist (নাক, কান ও গলা রোগ বিশেষজ্ঞ)",
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
                    .push(MaterialPageRoute(builder: (_) => ListerBuilderr()));
              } else if (i == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Hospital()));
              } else if (i == 3) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => DipokHospital()));
              }
            },
          ),
        )));
  }
}
