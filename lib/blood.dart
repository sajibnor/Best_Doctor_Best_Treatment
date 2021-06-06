import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BloodBank extends StatelessWidget {
  final List blood = [
    'Blood Bank - Bangladesh Red Crescent Society',
    'Address: National Headquarters,Maghbazar',
    '+8801811458524',
    'Bangladesh Red Crescent Blood Bank',
    'Aurongzeb Road, Mohammadpur, Dhaka.',
    '+880-02-9116563, +880-02-8121497',
    'Quantum Blood Bank',
    'Kakrail, Dhaka–1000. Dhaka, Bangladesh',
    '+88 02 9351969,+88 01714010869',
    'Quantum Blood Bank (Shantinagar)',
    'Shantinagar, Dhaka',
    '+8801714-010869',
    'Badhan Blood Bank',
    '+8801534-982674',
    'Address: Central Office, T.S.C',
    'Bangladesh Red Crescent Blood Bank',
    'Address: 7/5, Aurongzeb Road, Dhaka- 1207',
    '+8802-8121497',
    'Shandhani (Dhaka Medical College Branch)',
    'Address: Dhaka Medical College Hospital',
    '02-9668690',
    "Shandhani (Dhaka Dental College Branch)",
    "Address: Dhaka Dental College, Dhaka",
    '+880-2-9011887',
    'Shandhani Bangladesh Medical College Unit',
    'Address: Bangladesh Medical College Hospital,',
    '+880-2-9124619,',
    'Bangladesh Red Crescent Society',
    'Address: National Headquarters, 684-686, Bara Maghbazar',
    '+8802-8319366,',
    'Thalassemia Blooad Bank',
    'Address: Thalassemia Foundation Hospital, Dhaka',
    '+8802-8332481',
    'Sir Salimullah College Blood Bank',
    'Address: Sir Salimullah College Hospital',
    '02-7319123',
    'Islami Bank Hospital Blood Bank',
    'Address: Islami Bank Hospital, Kakrail',
    "02-8317090",
    'Bangladesh Blood Bank & Transfiution Center',
    'Address: 22/12,1st Floor, Mirpur Road',
    '+8801776-291633',
    'Alif Blood Bank & Transfusion Center',
    'Address: 44/11, West Panthapath',
    '+88-01712-392923',
    'Mukti Blood Bank',
    '01715405376',
    'Retina Blood Bank',
    'Address: 2 KA 5, Nowab Habibullah Road',
    '+880-2-9663853',
    'Maliha Blood Bank',
    'Address: 2/13, Humayan Road, Mohammadpur',
    "+880173-6989326",
    'Oriental Blood Bank',
    'Address: Green Center, 2B/30, Green Road, Dhanmondi',
    '+8801812-700053',
    'Police Hospital Blood Bank',
    'Address: Central Police Hospital, Rajarbag, Dhaka.',
    "+88029362573",
    'Quantum Blood Bank Lab',
    'Address: Shantinagar, Dhaka 1217',
    '8801714-010869',
    'Bangladesh Red Crescent Blood Bank',
    '7/5, Aurangzeb Road, Mohammadpur, Dhaka.',
    '+880-02-9116563, +880-02-8121497',
    'Alif Blood Bank & Transfusion Center',
    '44/11, West Panthapath ',
    '+8801712392923',
    'Badhan Blood Bank',
    'University of Dhaka, Dhaka-1000',
    '+8801534982674',
    'Thalassemia Blood Bank',
    'Address: 30 Chamelibag, 1st Lane, Dhaka 1217',
    '02-8332481',
    'Sandhani (Central)',
    'Sandhani Central. Room 35, Shahabag',
    '+880-2-8621658',
    'Police Blood Bank',
    'Central Police Hospital, Rajarbag, Dhaka.',
    '+8801713-398386',
    'Oriental Blood bank',
    'Green Center, 2B/30, Green Road, Dhanmondi',
    '+8801812700053',
    'Mukti Blood Bank & Pathology Lab',
    'Address: 54 (1st Floor), Bir-Uttam A.M. Shafiullah Road',
    '+880 2-8624249',
    'Islami Bank Hospital Blood Bank',
    'Dhaka, Bangladesh',
    '02-8317090',
    'Rhythm Blood Bank',
    'Address: Elephant Road, Hatirpool, Kancha Bazar',
    '+8801854-808765'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ব্লাড ব্যাংক (Blood Bank)",
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
                Doctor(blood[27], blood[28], blood[29]),
                Doctor(blood[29], blood[31], blood[32]),
                Doctor(blood[33], blood[34], blood[35]),
                Doctor(blood[36], blood[37], blood[38]),
                Doctor(blood[39], blood[40], blood[41]),
                Doctor(blood[42], blood[43], blood[44]),
                Doctor(blood[45], blood[46], blood[47]),
                Doctor(blood[48], blood[49], blood[50]),
                Doctor(blood[51], blood[52], blood[53]),
                Doctor(blood[54], blood[55], blood[56]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
                Doctor(blood[0], blood[1], blood[2]),
                Doctor(blood[3], blood[4], blood[5]),
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
      // height: MediaQuery.of(context).size.height * .2,
      // width: MediaQuery.of(context).size.width * 1,
      child: Card(
        // margin: EdgeInsets.all(10),

        // shadowColor: Colors.black,
        // elevation: 7,
        color: Colors.white70,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
            ),
            // Divider(
            //   height: 2,
            //   thickness: 2,
            // ),
            Text(
              drName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.028,
                  fontFamily: "Balooda"),
              textAlign: TextAlign.center,
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                drdetails,
                style: TextStyle(color: Colors.black, fontFamily: "Balooda"),
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            // Divider(
            //   height: 2,
            //   thickness: 2,
            // ),
            SizedBox(
              width: 4,
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
