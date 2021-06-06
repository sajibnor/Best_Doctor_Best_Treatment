import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:io';
import 'main.dart';
import 'registation.dart';
// import 'main.dart';
// import './drawer.dart';

// ignore: must_be_immutable
class LogInpage extends StatefulWidget {
  @override
  _LogInpageState createState() => _LogInpageState();
}

class _LogInpageState extends State<LogInpage> {
  var formKey = GlobalKey<FormState>();
  void validate() {
    if (formKey.currentState.validate()) {
      print("d.pemail");
    } else {
      print("error");
    }
  }

  var email, password;
  var emailControral;

  login() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final FirebaseUser user = (await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.setString("email", email);
    print("object");
    if (user != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => MyHomePage()));
    }

    // print('ok');
    // d.pemail = email.toString();
    else {
      print("Error");
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
                        " User Login",
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
                                    controller: emailControral,
                                    onChanged: (value) {
                                      setState(() {
                                        email = value;

                                        // d.pemail = value.toString();
                                      });
                                    },
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
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    onChanged: (value) {
                                      setState(() {
                                        password = value;
                                      });
                                    },
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
                                            onPressed: login,
                                            child: Text("Sign In"),
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
                                      "Don't Registration?",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => Registration()));
                                    },
                                  )
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
