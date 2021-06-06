import 'package:Best_doctor/main.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Oncology extends StatelessWidget {
  final List oncology = [
    'Professor Dr. Md. Abul Ahsan Didar',
    'MBBS, MPH, MD (radiotherapy)\nSenior Consultant Oncology',
    'Email: drabulahsan1960@gmail.com\nVisiting hours: 9am to 4pm (Saturday to Wednesday)',
    '+8801531291710,096017391,55092197-7',
    'Dr. Bhaskar Chakraborty',
    'MBBS, FCPS (radiotherapy)\n Consultant Oncology',
    'Visiting hours: - 9am to 5pm (Sunday to Thursday) and 6pm to night 9pm (Level-2)',
    '+8801531291710,096017391,55092197-7',
    'Dr. Md. Shah Jalalur Rahman Shahi',
    'MBBS (DMC), MCPS (Oncology) M.Phil (Immunology)',
    'Junior Consultant, Oncology \nVisiting hours: - Every day from 9 am to 5 pm and from 5.30 pm to 8.30 pm (level- 2)',
    '+8801531291710,096017391,55092197-7 ',
    'Dr. Islam Uddin Chowdhury',
    'MBBS, DPH,\nDMSI PhD (Medical Oncology,Bulgaria)',
    'Specialized training abroad in cancer treatment (Bulgaria, Canada, Singapore)\nConsultant Medical Oncology\nVisiting hours: - Every day from 9 am to 5 pm (Saturday to Wednesday)',
    '+8801531291710,096017391,55092197-7 ',
    'Dr. Md. Abu Kausar',
    'MBBS(Dhaka),FCPS(Surgery)\nCCD(Bardem) MS(Cancer Surgery)\nSpecial Training in Cancer Surgery(India, Austria)',
    'General Laparoscopic, Colorectal and Cancer Surgeon\nConsultant Surgical Oncology',
    '+8801531291710,096017391,55092197-7 ',
    'Professor Coronel Dr.Md.Yusuf Ali',
    'MBBS,FCPS, MACR (USA),FRSH (London),\n Advanced Training:Tata Medical Center(India)\nNational Cancer Center(Singapore\nObserver ship: Charing Cross St.\n Members: ESTRO (Europe), ASCO (USA).\nHead of Department',
    'Radiation Oncology, Cancer Center,\nCombined Military Hospital(CMH),Dhaka\nProfessor - Oncology,(AFMC)',
    '+8801531291710,096017391,55092197-7 ',
    'Professor. Dr. A.M.M. Shariful Alam',
    'MBBS, CIH, FCPS, FICS (USA)\nSenior Consultant & Head of Department Clinical Oncology',
    'Email: alamamms@gmail.com',
    '+8801531291710,096017391,55092197-7',
    'Professor (Dr.) Md. Abdul Mubin Chowdhury',
    'MBBS, MCPS (Surgery), FCPS (Surgery)\nGeneral and laparoscopic surgeons',
    'Senior Consultant,General andOnco-surgery',
    '+8801531291710,096017391,55092197-7',
    'Dr. D. M. Mahiduzzaman (Tony)',
    'MBBS, FCPS, MS (Surgery), CCD\nAdvanced Laparoscopic Surgery(Japan)\nAssociate Professor, Surgery (EDMCH)\nGeneral, Laparoscopic, Colorectal andOnco-Surgeon',
    'Visiting hours: - 3 pm to 5 pm (Sunday and Wednesday)',
    '+8801531291710,096017391',
    'Professor Dr. AFM Anwar Hossain',
    'MBBS, FCPS,MS\nFellow-Surgical Oncology\n(Tata Memorial Hospital, Mumbai, India)',
    'Trained in Surgical Oncology(USA)\nSenior Consultant Surgical Oncology',
    '+8801531291710,096017391,55092197-7',
    'Dr. Mostafa Aziz Sumon\nMBBS, FCPS, MD (Radiation Oncology)',
    'Assistant Professor\nHead Consultant Oncology,Department of Oncology,\nKurmitola General Hospital',
    'Visiting hours: 3pm to 8pm (Sunday, Tuesday and',
    '+88 01531291710,096017391,55092197-7 ',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Oncology (ক্যান্সার)',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white30,
          // elevation: 4,
          // shadowColor: Colors.orange,
          // leading: Row(
          //   children: [
          //     IconButton(icon: Icon(Icons.accessibility), onPressed: null),
          //     // IconButton(icon: Icon(Icons.accessibility), onPressed: null),
          //   ],
          // ),
          actions: [
            // IconButton(
            //   icon: Icon(FontAwesomeIcons.hamsa),
            //   onPressed: null,
            //   color: Colors.amber,
            // ),
            // IconButton(icon: Icon(FontAwesomeIcons.school), onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MyHomePage()));
                }),

            // IconButton(
            //     icon: Icon(FontAwesomeIcons.houseDamage), onPressed: null),
            // IconButton(icon: Icon(FontAwesomeIcons.camera), onPressed: null),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Doctor(oncology[0], oncology[1], oncology[2], oncology[3]),
                Doctor(oncology[4], oncology[5], oncology[6], oncology[7]),
                Doctor(oncology[8], oncology[9], oncology[10], oncology[11]),
                Doctor(oncology[12], oncology[13], oncology[14], oncology[15]),
                Doctor(oncology[16], oncology[17], oncology[18], oncology[19]),
                Doctor(oncology[20], oncology[21], oncology[22], oncology[23]),
                Doctor(oncology[24], oncology[25], oncology[26], oncology[27]),
                Doctor(oncology[28], oncology[29], oncology[30], oncology[31]),
                Doctor(oncology[32], oncology[33], oncology[34], oncology[35])
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

  final String drName, drDegre, drdetails, drNumber;
  Doctor(this.drName, this.drDegre, this.drdetails, this.drNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        // margin: EdgeInsets.all(10),

        // shadowColor: Colors.orange,
        // elevation: 7,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Text(
              drName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontFamily: "Balooda"),
              textAlign: TextAlign.end,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Text(
                drDegre,
                style: TextStyle(color: Colors.black, fontFamily: "Balooda"),
                textAlign: TextAlign.end,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                drdetails,
                style: TextStyle(color: Colors.black, fontFamily: "Balooda"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  child: Text('For Appointment:' + drNumber,
                      style: TextStyle(
                          color: Colors.black, fontFamily: "Balooda")),
                  onTap: () => customLaunch('tel:$drNumber')),
            ),
            SizedBox(
              width: 5,
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
