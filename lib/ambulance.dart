import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ambulance extends StatelessWidget {
  final List blood = [
    'Munshi Ambulance Services In Dhaka',
    'Kolabagab,Dhaka-1205',
    '+8801717-770852',
    'shopna Rent a Car',
    'Dali Bari ,West Panthapath, Kolabagab,Dhaka-1205',
    '+8801776211248, +8801951315002',
    'Khaled Ambulance Service',
    'Address: 67 Motijheel Rd, Dhaka ',
    '+8801933-246577',
    'Ambulance Service Bangladesh',
    'Address: Dhaka, Ashulia Hwy, Dhaka 1230',
    '+8801931-339697',
    'AMBULANCE SERVICE IN DHAKA',
    'Address: Airport Station Over Bridge, Dhaka ',
    '+8801711-980998',
    'Alif Ambulance Service',
    '76/A, (A1) Ahmed Plaza, West Panthapath',
    '+8801713-205555',
    'Hakkani Ambulance Service',
    'Address: Dhaka 1216',
    '+8801732-587070',
    'Desh Ambulance Service',
    'Address: 82 East Ahmed Nagor, Dhaka 1216',
    '+8801790-509607',
    'Haque Ambulance Service in Dhaka',
    'Address: 2/F Avenue 1, Dhaka 1216',
    '+8801715-834829'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ambulance (অ্যাম্বুলেন্স)",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white30,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[6], blood[7], blood[8]),
                Doctor(blood[9], blood[10], blood[11]),
                Doctor(blood[12], blood[13], blood[14]),
                Doctor(blood[15], blood[16], blood[17]),
                Doctor(blood[18], blood[19], blood[20]),
                Doctor(blood[21], blood[22], blood[23]),
                Doctor(blood[24], blood[25], blood[26]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Doctor extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not lunch $command');
    }
  }

  final String drName, drdetails, drNumber;
  Doctor(this.drName, this.drdetails, this.drNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width * 1,
      child: Card(
        // margin: EdgeInsets.all(10),

        shadowColor: Colors.black,
        // elevation: 3,
        color: Colors.white70,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Text(
              drName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.028,
                  fontFamily: "Balooda"),
              textAlign: TextAlign.center,
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                drdetails,
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Balooda"),
              ),
            ),
            Divider(
              height: 1,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: InkWell(
                  child: RichText(
                    text: TextSpan(
                        text: 'Phone :',
                        children: [
                          TextSpan(
                              text: drNumber,
                              style: TextStyle(color: Colors.green[600]))
                        ],
                        style: TextStyle(
                            color: Colors.black, fontFamily: "Balooda")),
                  ),
                  onTap: () => customLaunch('tel:$drNumber')),
            ),
            // SizedBox(
            //   width: 5,
            // ),
          ],
        ),
      ),
    );
  }
}
