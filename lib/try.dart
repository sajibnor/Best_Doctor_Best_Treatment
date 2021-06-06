import 'package:flutter/material.dart';
import 'package:flutter_autolink_text/flutter_autolink_text.dart';
import 'dart:core';
// import 'package:selectable_autolink_text/selectable_autolink_text.dart';

class MyyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_autolink_text example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter_autolink_text example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> scaffold = new GlobalKey();

  void showSnack(String link) {
    scaffold.currentState
        .showSnackBar(SnackBar(content: Text('Clicked: $link')));
  }

  @override
  Widget build(BuildContext context) {
    // launchURL() async {
    //   const url = 'https://flutter.dev';
    //   if (await canLaunch(url)) {
    //     await launch(url);
    //   } else {
    //     throw 'Could not launch $url';
    //   }
    // }

    return Scaffold(
      key: scaffold,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Center(
            child: AutolinkText(
                text: 'Your text with link tel:+8801744213411',
                textStyle: TextStyle(color: Colors.black),
                linkStyle: TextStyle(color: Colors.blue),
                // onWebLinkTap: (link) => showSnack(link),
                onPhoneTap: (link) => (link)),
          ),

          // SelectableAutoLinkText('tel:+8801744213411')
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
