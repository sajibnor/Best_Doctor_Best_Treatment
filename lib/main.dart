// import 'package:Best_doctor/aria_name.dart';
import 'package:Best_doctor/secondpage.dart';

import 'dart:ui';

import 'package:flutter/material.dart';

import './drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginPage.dart';
// import './registation.dart';
// import './hospital.dart';
//import './polash.dart';

// void main() => runApp(MyApp());
var email;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  email = prefs.getString("email");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Best doctor best treatment',
        // home: LogInpage());

        home: email == null ? LogInpage() : MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white30,
            title: Text(
              'Best Doctor & Treatment',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            centerTitle: true,
          ),
          drawer: Drawer(child: Drawerr()),
          body: Homepage()),
    );
  }
}
