import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './button.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 0, right: 20, left: 20, top: 20),
        margin: EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          children: [
            Mycard(
              icon: FontAwesomeIcons.hospitalUser,
              color: Colors.lightGreen,
              txt2: "",
              txt1: "( অঞ্চল ভিত্তিক ডঃ খুঁজুন )",
              w: 1,
            ),
            Mycard(
              icon: FontAwesomeIcons.hospital,
              color: Colors.brown,
              txt2: "",
              txt1: "( হাসপাতাল ভিত্তিক ডঃ খুঁজুন )",
              w: 2,
            ),
            Mycard(
              icon: FontAwesomeIcons.userMd,
              txt2: "",
              txt1: "( বিশেষজ্ঞতা ভিত্তিক ডঃ খুঁজুন )",
              w: 3,
            ),
            Mycard(
              icon: FontAwesomeIcons.handHoldingWater,
              color: Colors.red,
              txt2: "",
              txt1: "( ব্লাড ব্যাংক )",
              w: 4,
            ),
            Mycard(
              icon: FontAwesomeIcons.ambulance,
              color: Colors.red,
              txt2: "",
              txt1: "( এম্বুলেন্স )",
              w: 5,
            ),
            Mycard(
              icon: FontAwesomeIcons.fileMedical, //handHoldingHeart,

              txt2: "",
              txt1: "( হাসপাতাল তথ্য )",
              w: 6,
            ),
            // Card(
            //   shadowColor: Colors.black,
            //   elevation: 10,
            //   child: InkWell(
            //     onTap: () => null,
            //     // splashColor: Colors.green[5/=00],
            //     child: Center(
            //       child: Column(
            //         children: [
            //           Icon(
            //             FontAwesomeIcons.spa,
            //             size: 50,
            //           ),
            //           Text(
            //             "home",
            //             style: new TextStyle(
            //                 fontSize: 30, color: Colors.amber),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Card(
            //   child: InkWell(
            //     onTap: () => null,
            //     splashColor: Colors.green,
            //     child: Center(
            //       child: Column(
            //         children: [
            //           Expanded(child: Image.asset('images/c.png')),
            //           Text(
            //             "home",
            //             style: new TextStyle(
            //                 fontSize: 30, color: Colors.amber),
            //           ),
            //           Text("house")
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Card(
            //   child: InkWell(
            //     splashColor: Colors.green,
            //     onTap: () {},
            //     child: Center(
            //       child: Column(
            //         children: [
            //           Expanded(child: Image.asset('images/b.png')),
            //           Text(
            //             "home",
            //             style: new TextStyle(
            //                 fontSize: 30, color: Colors.amber),
            //           ),
            //           Text("house")
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Card(
            //   child: InkWell(
            //     onTap: () => Navigator.of(context)
            //         .push(MaterialPageRoute(builder: (_) => HPage())),
            //     splashColor: Colors.green,
            //     child: Center(
            //       child: Column(
            //         children: [
            //           Icon(
            //             FontAwesomeIcons.ambulance,
            //             size: 50,
            //             color: Colors.red,
            //           ),
            //           Text(
            //             'Ambulance',
            //             style: new TextStyle(color: Colors.amber),
            //           ),
            //           Text(
            //             'এম্বুলেন্স',
            //             style: new TextStyle(
            //                 fontFamily: "Galada",
            //                 fontWeight: FontWeight.normal),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ));
  }
}
