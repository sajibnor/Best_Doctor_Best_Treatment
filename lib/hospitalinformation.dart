import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class HospitalInfo extends StatefulWidget {
  @override
  _HospitalInfoState createState() => _HospitalInfoState();
}

class _HospitalInfoState extends State<HospitalInfo> {
  var data;

  Future loadJsonData() async {
    var response = await rootBundle.loadString("lib/data.json");

    setState(() {
      data = json.decode(response);
    });
    // print(response);

    // ignore: unused_element
  }

  @override
  // ignore: must_call_super
  // ignore: override_on_non_overriding_member
  // ignore: must_call_super
  void initState() {
    this.loadJsonData();
    // ignore: todo
    // TODO: implement initState
    // super.initState();
    // this.getData();
    // print('$data');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Hospital Information',
              style: TextStyle(color: Colors.black),
            ),
            bottomOpacity: .6,
            backgroundColor: Colors.white10.withOpacity(0.4),
            centerTitle: true,
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: SearchHospital());
                  })
            ],
          ),
          body: ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (context, index) {
              return Hospitalcard(
                data[index]['name'],
                data[index]["Address"],
                data[index]['phone'],
                data[index]['Email'],
                data[index]['Web'],
              );
            },
          )),
    );
  }
}

class Hospitalcard extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not lunch $command');
    }
  }

  final String hospitalName,
      hospitalAdress,
      hospitalTel,
      hospitalEmail,
      hospitalweb;
  Hospitalcard(this.hospitalName, this.hospitalAdress, this.hospitalTel,
      this.hospitalEmail, this.hospitalweb);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          // margin: EdgeInsets.all(10),

          shadowColor: Colors.black,
          elevation: 4,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  hospitalName,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.028,
                      fontFamily: "Balooda",
                      fontWeight: FontWeight.bold),
                  // textAlign: TextAlign.start,
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    hospitalAdress,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Balooda",
                        // fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.0230),
                  )
                  // textAlign: TextAlign.end),
                  ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                    child: RichText(
                      text: TextSpan(
                        text: 'Phone : ',
                        children: [
                          TextSpan(
                              text: '$hospitalTel',
                              style: TextStyle(
                                  color: Colors.green[600],
                                  fontWeight: FontWeight.bold))
                        ],
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Balooda",
                            fontSize:
                                MediaQuery.of(context).size.height * 0.0230),
                      ),
                      textAlign: TextAlign.start,
                    ),
                    onTap: () => customLaunch('tel:$hospitalTel')),
              ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     hospitalEmail,
              //     style: TextStyle(color: Colors.black, fontFamily: "Balooda"),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: RichText(
                    text: TextSpan(
                      text: 'Email: ',
                      children: [
                        TextSpan(
                            text: hospitalEmail,
                            style: TextStyle(
                                color: Colors.green[600],
                                fontWeight: FontWeight.bold))
                      ],
                      style:
                          TextStyle(color: Colors.black, fontFamily: "Balooda"),
                    ),
                  ),
                  onTap: () {
                    if (hospitalEmail.isNotEmpty) {
                      customLaunch(
                          'mailto:$hospitalEmail?subject=I have to meet a consultent&body=Write somethings...');
                    }
                  },
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: RichText(
                    text: TextSpan(
                      text: 'Web: ',
                      children: [
                        TextSpan(
                            text: hospitalweb,
                            style: TextStyle(
                                color: Colors.green[600],
                                fontWeight: FontWeight.bold))
                      ],
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Balooda",
                          fontSize:
                              MediaQuery.of(context).size.height * 0.0230),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                  onTap: () {
                    customLaunch(hospitalweb);
                  },
                ),
              ),
              SizedBox(
                width: 2,
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchHospital extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(title: Text('sa'));
      },
    );
  }
}
