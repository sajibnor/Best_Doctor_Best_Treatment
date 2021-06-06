import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Jsondatafile extends StatefulWidget {
  @override
  _JsondatafileState createState() => _JsondatafileState();
}

class _JsondatafileState extends State<Jsondatafile> {
  var data;
  Future getData() async {
    var response = await http.get("http://127.0.0.1:5500/lib/noname(3).html");
    var decode = json.decode(response.body);
    data = decode;
    // ignore: unused_element
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    this.getData();
    print('$data');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
