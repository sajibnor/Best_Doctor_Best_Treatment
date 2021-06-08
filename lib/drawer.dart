import 'dart:async';
import 'dart:core';

// import 'dart:io';
import 'dart:ui';
// import 'package:firstapp/views/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:Best_doctor/blood.dart';
// import 'package:Best_doctor/registation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ambulance.dart';
import 'department.dart';

import 'hospital.dart';
import './ambulance.dart';
// import './picup.dart';
import 'newDcForm.dart';
import 'newDcShow.dart';
import 'setprofile.dart';
// import 'newDcForm.dart';
// import './picUpImage.dart';

// ignore: must_be_immutable
class Drawerr extends StatefulWidget {
  // var _image;
  // ignore: unused_field

  @override
  _DrawerrState createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
//

//
  static const String youserName = "youserName";

  static const String youserEmail = "youserEmail";

  // // ignore: non_constant_identifier_names
  Future loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      youserNam = prefs.getString(youserName);
      youserEmai = prefs.getString(youserEmail);
    });
    print(youserNam);
    print(youserEmai);
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  var youserNam = "Sajib";
  var youserEmai = "admin@gmail.com";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: InkWell(
            child: Text(
              youserNam,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => PickImageDemo()));
            },
            splashColor: Colors.blue,
          ),
          accountEmail: Text(
            youserEmai,
          ),
          currentAccountPicture: InkWell(
            child: CircleAvatar(
              backgroundImage: AssetImage("images/logo2.png"),
              // child: CircleAvatar(
              //     child: Image(image: AssetImage("images/back.jpg")))
            ),
            onTap: () {
              print(youserNam + youserEmai);
            },
            splashColor: Colors.red,
          ),
        ),
        InkWell(
          child: ListTile(
            leading: Icon(
              FontAwesomeIcons.userCircle,
              color: Colors.black,
              size: 27,
            ),
            title: Text('profile'),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => PickImageDemo())),
        ),
        InkWell(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.hospital,
                  size: 30, color: Colors.black),
              title: Text('Find doctor by Hospital'),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Hospital()));
            }),
        InkWell(
          child: ListTile(
            leading: Icon(
              FontAwesomeIcons.userMd,
              color: Colors.brown[600],
              size: 30,
            ),
            title: Text('Find doctor by specialized'),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => DepartmeName())),
        ),
        InkWell(
          child: ListTile(
            leading: Icon(
              FontAwesomeIcons.ambulance,
              color: Colors.red,
            ),
            title: Text('Ambulance'),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Ambulance()));
          },
        ),
        InkWell(
          child: ListTile(
            leading: Icon(
              FontAwesomeIcons.handHoldingWater,
              color: Colors.red,
              size: 30,
            ),
            title: Text('Blood Bank'),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => BloodBank())),
        ),
        InkWell(
          child: ListTile(
            leading: Icon(
              FontAwesomeIcons.fileMedical,
              color: Colors.brown[400],
              size: 30,
            ),
            title: Text('Request to Add Doctor'),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => NewDcForm()));
          },
        ),
        InkWell(
          child: ListTile(
            leading: Icon(
              FontAwesomeIcons.addressBook,
              color: Colors.brown[400],
              size: 30,
            ),
            title: Text('Request new doctor list'),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => AddDoctor()));
          },
        ),
        InkWell(
          child: ListTile(
            leading: Icon(
              FontAwesomeIcons.ubuntu,
              color: Colors.brown[400],
              size: 30,
            ),
            title: Text('About us'),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => AddDoctor()));
          },
        )
      ],
    );
  }
}
