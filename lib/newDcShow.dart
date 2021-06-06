import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AddDoctor extends StatefulWidget {
  @override
  _AddDoctorState createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  static final String name = "name";
  static final String degree = "degree";
  static final String address = "address";
  static final String visiteTime = "visiteTime";
  static final String phone = "phone";
  // static final String regi = "regi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Doctor"),
      ),
      body: StreamBuilder(
        stream:
            Firestore.instance.collection("AddDoctorIformation").snapshots(),
        builder: (_, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                // itemExtent: 1,

                itemCount: snapshot.data.documents.length,
                // itemCount: 2,
                itemBuilder: (_, index) {
                  DocumentSnapshot data = snapshot.data.documents[index];
                  return data == null
                      ? Center(
                          child: CircularProgressIndicator(
                            value: 1500,
                            semanticsLabel: "loading",
                            semanticsValue: "Aloading",
                            backgroundColor: Colors.green,
                          ),
                        )
                      : Doctor(
                          data[name],
                          data[degree],
                          data[address],
                          data[visiteTime],
                          data[phone],
                        );
                });
          }
        },
      ),
    );
  }
}

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
          // margin: EdgeInsets.all(10),

          // shadowColor: Colors.orange,
          // elevation: 7,
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
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontFamily: "Balooda"),
                textAlign: TextAlign.end,
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
