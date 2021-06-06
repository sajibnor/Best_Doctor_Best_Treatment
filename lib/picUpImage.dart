import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import './utility.dart';

class NoteList extends StatefulWidget {
  @override
  NoteListState createState() {
    return new NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  Future<File> imageFile;
  Image imageFromPreferences;

  pickImageFromGallery(ImageSource source) {
    setState(() {
      // ignore: deprecated_member_use
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  loadImageFromPreferences() {
    Utility.getImageFromPreferences().then((img) {
      setState(() {
        imageFromPreferences = Utility.imageFromBase64String(img);
      });
    });
  }

  Widget preferenceImage() {
    return FutureBuilder<Image>(
      future: loadImageFromPreferences(),
      builder: (BuildContext context, AsyncSnapshot<Image> image) {
        print(image);
        if (image.connectionState == ConnectionState.done && image.hasData) {
          return image.data;
        } else {
          return Text("error");
        }
      },
    );
  }

  Widget imageFromGallery() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          Utility.saveImageToPreferences(
              Utility.base64String(snapshot.data.readAsBytesSync()));
          return Image.file(
            snapshot.data,
          );
        }
        return null;
      },
    );
  }

  finalPicker() {
    if (imageFromGallery() == null) {
      return preferenceImage();
    } else if (imageFromGallery() != null) {
      return imageFromGallery();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Taking Notes')),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text('lala@web.de'),
                accountName: Text('Max'),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    pickImageFromGallery(ImageSource.gallery);
                  },
                  child: Column(
                    children: <Widget>[finalPicker()],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text("Locked files"),
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ));
  }
}
