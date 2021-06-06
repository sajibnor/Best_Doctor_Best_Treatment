import 'package:flutter/material.dart';

class HPage extends StatelessWidget {
  final List people = [
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
    {"name": "mariyam", "Email": "sajib.nur@gmail.com"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: ListView.builder(
            itemCount: people.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text(people[index]["name"][0]),
                  ),
                  title: Text(people[index]["name"]),
                  subtitle: Text(people[index]["Email"]),
                )
              ]);
            }));
  }
}
