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
    "Medicine (?????????????????????)",
    // "General (?????????????????????)",
    "General surgery (????????????????????? ????????????????????????)",
    // "Neurology (?????????????????? ??? ?????????????????????)",
    "Neuro-Medicine Specialist (??????????????? ????????????????????? ????????????????????????",
    "Neuro-Surgery (??????????????? ????????????????????????)",
    "Cardiology (??????????????????)",
    "Chest Specialist (??????????????????????????????)",
    "Orthopedic (???????????? ????????????????????????)",
    "Eye specialist (??????????????? ????????????????????????)",
    "Oncology (???????????????????????????)",
    "Gynecologist (???????????????, ????????????????????? ??? ??????????????????????????? ????????? ????????????????????????)",
    "Child care specialist (???????????? ????????????????????????)",
    // "Pediatric (??????????????????)",
    "Dental Specialist (????????????)",
    "Pulmonology (??????????????????)",
    "Nephrology (???????????????)",
    "Urology (???????????????????????????)",
    "Dermatologist, Skin & VD (????????????????????? ????????????????????????)",
    "Burn,Plastic & Cosmetic Surgery (???????????????,??????????????????????????? ???????????? ????????????????????? ????????????????????????) ",
    "Gastroenterology (????????????????????????????????????)",
    "Hepatology (??????????????? ??? ???????????????????????????)",
    "Rheumatic Fever (????????? ????????????)",
    "Hypertension (???????????? ????????????-?????????)",
    "Colorectal Surgery (?????????????????? ????????????????????????)",
    "Hematology (?????????????????????)",
    "Vascular Surgery (???????????????????????? ????????????????????????)",
    "Diabetic,Thyroid & Endocrinologist (??????????????????????????????,???????????????????????? & ???????????????  ????????????????????????)",

    // "Rheumatic Fever (????????? ????????????) ",
    "Laparoscopic (??????????????????????????????????????????)",
    "Maxillofacial Surgery (?????????????????????????????????????????????????????? ????????????????????????)",
    // "Gastroenterology (????????????????????????????????????)",
    "Radiology and Imaging Specialist (???????????????????????? ???????????? ?????????????????? ????????????????????????)",
    "ENT- specialist (?????????, ????????? ??? ????????? ????????? ????????????????????????)",
    "Physiotherapy (?????????????????????????????????)",
    "Psychiatrist (?????????????????? ????????? ????????????????????????)",
    "Nutritionist (???????????????????????????)",
    "COVID-19 (???????????????-??????)",
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
