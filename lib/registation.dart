// import 'package:Best_doctor/main.dart';
// import 'package:Best_doctor/secondpage.dart';
import 'package:Best_doctor/try.dart';
// import 'package:Best_doctor/secondpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

// import 'dart:io';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var formKey = GlobalKey<FormState>();
  void validate() {
    if (formKey.currentState.validate()) {
      print("ok");
    } else {
      print("error");
    }
  }

  // Future singin() async {
  //   final Google
  // }

  // Drawerr d = new Drawerr();
  // display(d) {}
  var email;
  var password;

  registration() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final FirebaseUser user = (await firebaseAuth
            .createUserWithEmailAndPassword(email: email, password: password))
        .user;
    if (user != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => MyHomePage()));
      print("ok");
    } else {
      print("Error...");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Best Doctor Best Treatment'),
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.7),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "images/back2.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        "User Registration",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Stack(children: [
                        Card(
                          color: Colors.white.withOpacity(0.5),
                          child: Form(
                            key: formKey,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: <Widget>[
                                  Divider(
                                    height: 4,
                                    thickness: 4,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enter a email.. ",
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        labelText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.black)),
                                    // validator: (value) {
                                    //   if (value.length == 0) {
                                    //     return ("Invalide");
                                    //   } else {
                                    //     return null;
                                    //   }
                                    // },
                                    onChanged: (value) {
                                      setState(() {
                                        email = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enter a password",
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        labelText: "Password"),
                                    // validator: (value) {
                                    //   if (value.length == 0) {
                                    //     return ("Invalide");
                                    //   } else {
                                    //     return null;
                                    //   }
                                    // },
                                    onChanged: (value) {
                                      setState(() {
                                        password = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: RaisedButton(
                                            onPressed: registration,
                                            child: Text("Sign Up"),
                                            color: Colors.white60,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child: Center(
                                      //     child: RaisedButton(
                                      //       onPressed: () {},
                                      //       child: Text("sign up"),
                                      //       color: Colors.blue,
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  InkWell(
                                      child: Text(
                                        "Do have Registration?",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => LogInpage()))),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
