import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Best_doctor/main.dart';

class Radiology extends StatefulWidget {
  @override
  _RadiologyState createState() => _RadiologyState();
}

class _RadiologyState extends State<Radiology> {
  var data;

  Future loadjsondata() async {
    var response =
        await rootBundle.loadString("lalldata/allspecialized/redio.json");
    setState(() {
      data = json.decode(response);
      print(data);
    });
  }

  @override
  // ignore: must_call_super
  void initState() {
    this.loadjsondata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Radiology & Imaging(রেডিওলজি এন্ড ইমেজিং বিশেষজ্ঞ)",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "Balooda"),
          ),
          backgroundColor: Colors.white30,
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MyHomePage()));
                }),
          ],
        ),
        body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, index) {
            return Doctor(
              data[index]['name'],
              data[index]["Degree"],
              data[index]['Address'],
              data[index]['Visit'],
              data[index]['phone'],
            );
          },
        ));
  }
}

// ignore: must_be_immutable
class Doctor extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not lunch $command');
    }
  }

  final String drName, drDegre, drdetails, visite, drNumber;

  Doctor(this.drName, this.drDegre, this.drdetails, this.visite, this.drNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Card(
          color: Colors.white70,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Text(
                drName,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontFamily: "Balooda"),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Text(drDegre,
                    style:
                        TextStyle(color: Colors.black, fontFamily: "Balooda"),
                    textAlign: TextAlign.end),
              ),
              Divider(
                height: 2,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  drdetails,
                  style: TextStyle(color: Colors.black, fontFamily: "Balooda"),
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  visite,
                  style: TextStyle(color: Colors.black, fontFamily: "Balooda"),
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    child: RichText(
                      text: TextSpan(
                          text: 'For Appointment:',
                          style: TextStyle(
                              color: Colors.black, fontFamily: "Balooda"),
                          children: [
                            TextSpan(
                                text: drNumber,
                                style: TextStyle(
                                    color: Colors.green, fontFamily: "Balooda"))
                          ]),
                    ),
                    onTap: () => customLaunch('tel:$drNumber')),
              ),
              SizedBox(
                width: 5,
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
