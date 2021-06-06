import 'package:Best_doctor/area.dart';
import 'package:flutter/material.dart';

class ListerBuilderr extends StatelessWidget {
  final List sug = [
    'Dr.Md:Abul Hossen',
    'MBBS,FCPS(ENT) \nCONSELTENT',
    'Head & Neck Surgeon',
    'Visiting time: Everyday 10am-2pm',
    'Dr.Md:Abul Hossen',
    'MBBS,FCPS(ENT) \nCONSELTENT',
    'Head & Neck Surgeon',
    'Visiting time: Everyday 10am-2pm',
    'Dr.Md:Abul Hossen',
    'MBBS,FCPS(ENT) \nCONSELTENT',
    'Head & Neck Surgeon',
    'Visiting time: Everyday 10am-2pm',
    'Dr.Md:Abul Hossen',
    'MBBS,FCPS(ENT) \nCONSELTENT',
    'Head & Neck Surgeon',
    'Visiting time: Everyday 10am-2pm',
    'Dr.Md:Abul Hossen',
    'MBBS,FCPS(ENT) \nCONSELTENT',
    'Head & Neck Surgeon',
    'Visiting time: Everyday 10am-2pm',
    'Dr.Md:Abul Hossen',
    'MBBS,FCPS(ENT) \nCONSELTENT',
    'Head & Neck Surgeon',
    'Visiting time: Everyday 10am-2pm',
  ];
  final List gynecologist = [
    'Dr. Runa Laila\nMBBS, MCPS, FCPS',
    'Laparoscopic surgeon and trained \nin infertility Gynecologist and gynecologist',
    'Visiting time: 3 pm to 5 pm',
    'For Serials - 01531291710,096017391,55092197-7 ',
    'Dr. Mahbuba Khan\nMBBS (Dhaka), FCPS(Gynae & OBS)',
    'Consultant(Gynae & OBS)',
    'Visiting hours: - 10am to 2pm(Saturday)',
    'For Serials - 01531291710,096017391,55092197-7 ',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: sug.length,
            itemBuilder: (BuildContext context, int i) => Doctor(
                hospitalName[i],
                gynecologist[i],
                gynecologist[i],
                gynecologist[i]),
          ),
        ),
      ),
    );
  }
}

class Doctor extends StatelessWidget {
  final String drName, drDegre, drdetails, drNumber;
  Doctor(this.drName, this.drDegre, this.drdetails, this.drNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        // margin: EdgeInsets.all(10),

        shadowColor: Colors.orange,
        elevation: 7,
        color: Colors.yellow,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
            ),
            Text(
              drName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontFamily: "Balooda"),
              textAlign: TextAlign.end,
            ),
            Text(drDegre,
                style: TextStyle(color: Colors.white, fontFamily: "Balooda"),
                textAlign: TextAlign.end),
            Text(
              drdetails,
              style: TextStyle(color: Colors.white, fontFamily: "Balooda"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drNumber,
                  style: TextStyle(color: Colors.white, fontFamily: "Balooda")),
            ),
            SizedBox(
              width: 150,
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}
