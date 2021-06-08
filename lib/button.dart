import 'package:Best_doctor/blood.dart';
import 'package:Best_doctor/hospital.dart';
import 'package:Best_doctor/setprofile.dart';
import 'package:Best_doctor/savar.dart';
// import 'package:Best_doctor/savar.dart';
// import 'package:Best_doctor/try.dart';
import 'package:flutter/material.dart';

import './area.dart';
import 'ambulance.dart';
import 'department.dart';
import './hospitalinformation.dart';
// import 'listbuilder.dart';
// import './expandHospitalare.dart';

class Mycard extends StatelessWidget {
  Mycard({this.icon, this.color, this.txt1, this.txt2, this.w});
  final IconData icon;
  final String txt1;
  final String txt2;
  final MaterialColor color;
  final int w;

  @override
  Widget build(BuildContext context) {
    int fin;
    fin = w;
    return Card(
      margin: EdgeInsets.all(8),
      shadowColor: Colors.blue,
      elevation: 8,
      child: InkWell(
        onTap: () {
          if (fin == 1) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => AreListname()));
          } else if (fin == 2) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Hospital()));
          } else if (fin == 3) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => DepartmeName()));
          } else if (fin == 4) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => BloodBank()));
          } else if (fin == 5) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Ambulance()));
          } else if (fin == 6) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => HospitalInfo()));
          }
        },
        splashColor: Colors.lightBlue,
        child: Center(
          //padding: const EdgeInsets.only(left: 12, top: 12, right: 12),

          child: Padding(
            padding: const EdgeInsets.all(
              (4.0),
            ),
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon, //hospitalUser,
                  size: 50.0,
                  color: color, //blueAccent,
                ),
                // Padding(
                // padding: EdgeInsets.symmetric(
                // vertical: 5,
                // )),
                Text(
                  txt2, //"Find doctor by area",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Padding(padding: EdgeInsets.only(top: 3)),
                Expanded(
                  child: Center(
                    child: Text(
                      txt1, //"( অঞ্চল ভিত্তিক ডঃ খুঁজুন )",
                      style: new TextStyle(
                          fontFamily: "BalloDa2", fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
