import 'package:flutter/material.dart';

class MassegeShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "No data yet !!\n\nFuture uploaded data",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.blueGrey),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Go back",
                      style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
