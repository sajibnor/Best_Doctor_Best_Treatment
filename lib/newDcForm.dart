import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewDcForm extends StatefulWidget {
  @override
  _NewDcFormState createState() => _NewDcFormState();
}

class _NewDcFormState extends State<NewDcForm> {
  static final String name = "name";
  static final String degree = "degree";
  static final String address = "address";
  static final String visiteTime = "visiteTime";
  static final String phone = "phone";
  static final String regi = "regi";
  String dcname;
  String dcdegree;
  String dcaddress;
  String dcvisiteTime;
  String dcphone;
  String dcregi;

  Future sendData() async {
    // ignore: unused_local_variable
    final db = await Firestore.instance.collection("AddDoctorIformation").add({
      name: dcname,
      degree: dcdegree,
      address: dcaddress,
      visiteTime: dcvisiteTime,
      phone: dcphone,
      regi: dcregi
    });
  }

  Future<void> deleteProfile(DocumentSnapshot doc) async {
    await Firestore.instance
        .collection("AddDoctorIformation")
        .document(doc.documentID)
        .delete();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            // color: Colors.purple[200],
            child: SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Please Upload your information",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Please Enter your full name",
                              hintText: "Enter your full name only",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            onChanged: (value) {
                              dcname = value.toString();
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Please enter your Degrees",
                              hintText: "Enter your degrees...",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            onChanged: (value) {
                              dcdegree = value.toString();
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText:
                                  "Please Enter your present hospital adress & name",
                              hintText: "Enter your hospital name with adress",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            onChanged: (value) {
                              dcaddress = value.toString();
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Please Enter your Visiting time",
                              hintText: "Enter your Visiting time",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            onChanged: (value) {
                              dcvisiteTime = value.toString();
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Please Enter your Phone Number",
                              hintText: "Enter your phone number",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            onChanged: (value) {
                              dcphone = value.toString();
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Please Enter your Registation ID No.",
                              hintText: "Enter your Registration number",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                            onChanged: (value) {
                              dcregi = value.toString();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Builder(
                  builder: (BuildContext con) {
                    return RaisedButton(
                        color: Colors.white.withOpacity(0.8),
                        child: Text("Upload"),
                        onPressed: () {
                          return (dcname == null ||
                                  dcaddress == null ||
                                  dcdegree == null ||
                                  dcphone == null)
                              ? (Scaffold.of(con).showSnackBar(SnackBar(
                                  content:
                                      Text("Plese fillup requirment fill"))))
                              : sendData()
                                  .then((value) => Navigator.of(context).pop());
                          // (  print(dcname +
                          //         dcdegree +
                          //         dcaddress +
                          //         dcvisiteTime +
                          //         dcphone +
                          //         dcregi)));

                          // Scaffold.of(con).showSnackBar(SnackBar(
                          //     content: Text("Plese fillup requirment fill")));
                        });
                  },
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
