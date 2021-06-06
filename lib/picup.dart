import 'package:Best_doctor/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

import 'main.dart';

// import './drawer.dart';

class PickImageDemo extends StatefulWidget {
  PickImageDemo() : super();

  @override
  _PickImageDemoState createState() => _PickImageDemoState();
}

class _PickImageDemoState extends State<PickImageDemo> {
  Future<File> imageFile;
  var image;
  var username;
  var useremail = TextEditingController();

  pickImageFromGallery(ImageSource source) {
    setState(() {
      // ignore: deprecated_member_use
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  void save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      prefs.setString("youserName", username);
      prefs.setString("youserEmail", useremail.text);
    });
    Navigator.of(context).pop();
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyHomePage()));

    // print( prefs.getString(youserName));
    // _image = prefs.set("image");
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 300,
            height: 300,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  // @override
  // // ignore: must_call_super
  // void initState() {
  //   save();

  //   // super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Select your Profile picture"),
            IconButton(
              icon: Icon(
                Icons.camera,
                size: 50,
                color: Colors.green,
              ),
              tooltip: 'image',
              onPressed: () {
                pickImageFromGallery(ImageSource.gallery);
              },
            ),
            TextField(
              onChanged: (valu) {
                setState(() {
                  username = valu.toString();
                });
              },
              // controller: username,
              decoration: InputDecoration(
                  labelText: "Name",
                  hintStyle: TextStyle(color: Color(0xfffbbb2f)),
                  hintText: "Enter Your name...."),
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            TextField(
              controller: useremail,
              // onChanged: (valu) {
              //   setState(() {
              //     useremail = valu.toString();
              //   });
              // },
              // controller: useremail,
              decoration: InputDecoration(
                  labelText: "Name",
                  hintStyle: TextStyle(color: Color(0xfffbbb2f)),
                  hintText: "Enter Your name...."),
            ),
            RaisedButton(onPressed: () {
              save();
            })
          ],
        ),
      ),
    );
  }
}
