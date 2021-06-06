// import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_autolink_text/flutter_autolink_text.dart';

// ignore: must_be_immutable
class AreName extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not lunch $command');
    }
  }
  // var hasmap=new HashMap();
  // hasmap.addAll('n':'s');

  List sug = [
    'Professor Dr. Md. Abul Ahsan Didar',
    'MBBS, MPH, MD (radiotherapy)\nSenior Consultant Oncology',
    'Email: drabulahsan1960@gmail.com\nVisiting hours: 9am to 4pm (Saturday to Wednesday)',
    '+8801531291710,096017391,55092197-7',
    'Dr. Bhaskar Chakraborty',
    'MBBS, FCPS (radiotherapy)\n Consultant Oncology',
    'Visiting hours: - 9am to 5pm (Sunday to Thursday) and 6pm to night 9pm (Level-2)',
    '+8801531291710,096017391,55092197-7',
    'Dr. Md. Shah Jalalur Rahman Shahi',
    'MBBS (DMC), MCPS (Oncology)  M.Phil (Immunology)',
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
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text('Oncology'),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: Datasearch());
                })
          ],
        ),
        drawer: Drawer(),
        body: SafeArea(
            child: Container(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Card(
                        // child: Title(color: Colors.amber, child: Text('Dr.Md:Abul Hossen'+"\n"+'(Ent)',
                        // style: TextStyle(),textAlign: TextAlign.end,),title: "Head & Neck Surgeon",),
                        ),
                  ),
                  AutolinkText(
                    text: '+8801744213411',
                    textStyle: TextStyle(color: Colors.black),
                    linkStyle: TextStyle(color: Colors.blue),
                    // onWebLinkTap: (link) =>
                    //     print('Clicked: ${'+8801744213411'}'),
                    // onEmailTap: (link) =>
                    //     print('Clicked: ${'+8801744213411'}'),
                    onPhoneTap: (link) => customLaunch('tel:+8801744213411'),
                  ),
                  AutolinkText(
                    text: 'Link is https://google.com',
                    humanize: true,
                    linkStyle: null,
                    textStyle: null,
                  ),

                  InkWell(
                      onTap: () {
                        customLaunch('tel:+8801744213411');
                      },
                      child: Text('For Appointment :+8801744213411')),
                  //     ExpansionTile(
                  //   title: Text('Dr.Md:Abul Hossen'),
                  //   children: [
                  //     Padding(padding: EdgeInsets.only(top: 0)),
                  //    Text('Dr.Md:Abul Hossen',style:TextStyle(),textAlign:TextAlign.end),
                  //    Text('MBBS,FCPS(ENT) \nCONSELTENT',style:TextStyle(),textAlign:TextAlign.end),
                  //    Text('Head & Neck Surgeon'),
                  //     Text('Visiting time: Everyday 10am-2pm'),
                  //     Text('For Appointment: 01531291810')
                  //   ],

                  // ),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  Text('Dr.Md:Abul Hossen',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                      textAlign: TextAlign.end),
                  Text('MBBS,FCPS(ENT) \nCONSELTENT',
                      style: TextStyle(), textAlign: TextAlign.end),
                  Text('Head & Neck Surgeon'),
                  Text('Visiting time: Everyday 10am-2pm'),
                  Text('For Appointment: 01531291810'),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  Text('Dr.Md:Abul Hossen',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                      textAlign: TextAlign.end),
                  Text('MBBS,FCPS(ENT) \nCONSELTENT',
                      style: TextStyle(), textAlign: TextAlign.end),
                  Text('Head & Neck Surgeon'),
                  Text('Visiting time: Everyday 10am-2pm'),
                  Text('For Appointment: 01531291810'),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  Text('Dr.Md:Abul Hossen',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                      textAlign: TextAlign.end),
                  Text('MBBS,FCPS(ENT) \nCONSELTENT',
                      style: TextStyle(), textAlign: TextAlign.end),
                  Text('Head & Neck Surgeon'),
                  Text('Visiting time: Everyday 10am-2pm'),
                  Text('For Appointment: 01531291810'),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  Text('Dr.Md:Abul Hossen',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                      textAlign: TextAlign.end),
                  Text('MBBS,FCPS(ENT) \nCONSELTENT',
                      style: TextStyle(), textAlign: TextAlign.end),
                  Text('Head & Neck Surgeon'),
                  Text('Visiting time: Everyday 10am-2pm'),
                  Text('For Appointment: 01531291810'),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  Text(sug[0],
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                      textAlign: TextAlign.end),
                  Text('MBBS,FCPS(ENT) \nCONSELTENT',
                      style: TextStyle(), textAlign: TextAlign.end),
                  Text('Head & Neck Surgeon'),
                  Text('Visiting time: Everyday 10am-2pm'),
                  Text('For Appointment: 01531291810'),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  Text('Dr.Md:Abul Hossen',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                      textAlign: TextAlign.end),
                  Text('MBBS,FCPS(ENT) \nCONSELTENT',
                      style: TextStyle(), textAlign: TextAlign.end),
                  Text('Head & Neck Surgeon'),
                  Text('Visiting time: Everyday 10am-2pm'),
                  Text('For Appointment: 01531291810'),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),
                  Text('Dr.Md:Abul Hossen',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                      textAlign: TextAlign.end),
                  Text('MBBS,FCPS(ENT) \nCONSELTENT',
                      style: TextStyle(), textAlign: TextAlign.end),
                  Text('Head & Neck Surgeon'),
                  Text('Visiting time: Everyday 10am-2pm'),
                  Text('For Appointment: 01531291810'),
                  SizedBox(
                    width: 5,
                    height: 6,
                  ),

                  Text(
                      '         ডাক্তার মোঃ ফিরোজ হাসান,\nএমবিবিএস, এফসিপিএস, ফিজিক্যাল মেডিসিন\nসাক্ষাৎ: প্রতিদিন বিকেল ৪ টা থেকে রাত ৮টা |\nশুক্রবার সকাল ১০টা থেকে দুপুর ২ টা পর্যন্ত |',
                      style: TextStyle(fontFamily: "Balooda")),

                  Doctor(sug[0], sug[1], sug[2], (sug[3])),

                  Doctor(sug[0], sug[1], sug[2], sug[3]),

                  // for (var i = 0; i < sug.length; i + 4)
                  //   {
                  //     Doctor(sug[i], sug[i + 1], sug[i + 2], sug[i + 3]),
                  //   },
                  // ListView.builder(
                  //     itemCount: sug.length,
                  //     itemBuilder: (BuildContext context, int i) =>
                  //         Doctor(sug[i], sug[i], sug[i], sug[i]))

                  // ListTile(
                  //   title:Text('Head & Neck Surgeon'),
                  //   // subtitle: Text('Ahsania mission cencer hospital'),
                  //   leading:   Text('Dr.Md:Abul Hossen'),

                  //   // trailing: Text('MBBS,FCPS(ENT) ''\N''CONSELTENT'),

                  // ),
                  //  ListTile(
                  //   title: Text('Dr.Md:Abul Hossen'),
                  //   subtitle: Text('Ahsania mission cencer hospital'),
                  //   // leading: Text('Head & Neck Surgeon'),

                  //   // trailing: Text('MBBS,FCPS(ENT) ''\N''CONSELTENT'),
                ],
              ),
            ),
          ),
        )));
  }
}

class Datasearch extends SearchDelegate<String> {
  final list = [
    // 'Dr.Md:Abul Hossen',
    // 'rita',
    // 'mita',
    // 'gita',
    // 'sita',
    // 'Dr.Md:Abul Hossen',
    // 'rita',
    // 'mita',
    // 'gita',
    // 'sita',
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text('Dr.Md:Abul Hossen',
        style: TextStyle(fontSize: 10), textAlign: TextAlign.end),
    Text('MBBS,FCPS(ENT) \nCONSELTENT',
        style: TextStyle(), textAlign: TextAlign.end),
    Text('Head & Neck Surgeon'),
    Text('Visiting time: Everyday 10am-2pm'),
    Text('For Appointment: 01531291810'),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text('Dr.Md:Abul Hossen',
        style: TextStyle(fontSize: 10), textAlign: TextAlign.end),
    Text('MBBS,FCPS(ENT) \nCONSELTENT',
        style: TextStyle(), textAlign: TextAlign.end),
    Text('Head & Neck Surgeon'),
    Text('Visiting time: Everyday 10am-2pm'),
    Text('For Appointment: 01531291810'),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text('Dr.Md:Abul Hossen',
        style: TextStyle(fontSize: 10), textAlign: TextAlign.end),
    Text('MBBS,FCPS(ENT) \nCONSELTENT',
        style: TextStyle(), textAlign: TextAlign.end),
    Text('Head & Neck Surgeon'),
    Text('Visiting time: Everyday 10am-2pm'),
    Text('For Appointment: 01531291810'),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text('Dr.Md:Abul Hossen',
        style: TextStyle(fontSize: 10), textAlign: TextAlign.end),
    Text('MBBS,FCPS(ENT) \nCONSELTENT',
        style: TextStyle(), textAlign: TextAlign.end),
    Text('Head & Neck Surgeon'),
    Text('Visiting time: Everyday 10am-2pm'),
    Text('For Appointment: 01531291810'),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text('Dr.Md:Abul Hossen',
        style: TextStyle(fontSize: 15), textAlign: TextAlign.end),
    Text('MBBS,FCPS(ENT) \nCONSELTENT',
        style: TextStyle(), textAlign: TextAlign.end),
    Text('Head & Neck Surgeon'),
    Text('Visiting time: Everyday 10am-2pm'),
    Text('For Appointment: 01531291810'),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text('Dr.Md:Abul Hossen',
        style: TextStyle(fontSize: 10), textAlign: TextAlign.end),
    Text('MBBS,FCPS(ENT) \nCONSELTENT',
        style: TextStyle(), textAlign: TextAlign.end),
    Text('Head & Neck Surgeon'),
    Text('Visiting time: Everyday 10am-2pm'),
    Text('For Appointment: 01531291810'),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text('Dr.Md:Abul Hossen',
        style: TextStyle(fontSize: 10), textAlign: TextAlign.end),
    Text('MBBS,FCPS(ENT) \nCONSELTENT',
        style: TextStyle(), textAlign: TextAlign.end),
    Text('Head & Neck Surgeon'),
    Text('Visiting time: Everyday 10am-2pm'),

    // SizedBox(
    //   width: 5,
    //   height: 6,
    // ),
    Text(
        '      ডাক্তার মোঃ ফিরোজ হাসান,\nএমবিবিএস, এফসিপিএস, ফিজিক্যাল মেডিসিন\nসাক্ষাৎ: প্রতিদিন বিকেল ৪ টা থেকে রাত ৮টা |\nশুক্রবার সকাল ১০টা থেকে দুপুর ২ টা পর্যন্ত |',
        style: TextStyle(fontFamily: "Balooda")),
    Text('data')
  ];

  final li = [
    'Dr.Md:Abul Hossen',
    'dr',
    'mitu',
    'gita',
    'sita',
    'Dr.Md:Abul Hossen'
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  List hospitalName = [
    "Enam Medical College and Hospital",
    "ibn sina diagnostic & Consultation Center",
    "Popular Diagnostic Center Ltd.",
    "New Dip Clinic",
    "Deep Clinic & Diagnostic Center",
    "Savar Prime Hospital Limited",
    "Savar Care Hospital",
    "Bela Specialized Therapy & Rehabilitation Center",
    "Seba Clinic & Diagnostic Centre",
    "Savar Specialized Hospital.",
    "Savar Crown Hospital and Diagnostic Centre",
    "Super Medical Hospital",
    "Savar Eye Hospital & Phaco Center"
  ];

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.arrow_menu, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
      splashColor: Colors.blue,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  List sug = [
    'Professor Dr. Md. Abul Ahsan Didar',
    'MBBS, MPH, MD (radiotherapy)\nSenior Consultant Oncology',
    'Email: drabulahsan1960@gmail.com\nVisiting hours: 9am to 4pm (Saturday to Wednesday)',
    '+8801531291710,096017391,55092197-7',
    'Dr. Bhaskar Chakraborty',
    'MBBS, FCPS (radiotherapy)\n Consultant Oncology',
    'Visiting hours: - 9am to 5pm (Sunday to Thursday) and 6pm to night 9pm (Level-2)',
    '+8801531291710,096017391,55092197-7',
    'Dr. Md. Shah Jalalur Rahman Shahi',
    'MBBS (DMC), MCPS (Oncology)  M.Phil (Immunology)',
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
  Widget buildSuggestions(BuildContext context) {
    final sugg = query.isEmpty
        ? sug
        : hospitalName.where((element) => element.startWith(query).toList());
    return ListView.builder(
        itemCount: sugg.length,
        itemBuilder: (context, index) => ListTile(title: Text("")));
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

        shadowColor: Colors.orange,
        elevation: 7,
        color: Colors.purple,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Text(
              drName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontFamily: "Balooda"),
              textAlign: TextAlign.end,
            ),
            Text(drDegre,
                style: TextStyle(color: Colors.white, fontFamily: "Balooda"),
                textAlign: TextAlign.end),
            Text(
              drdetails,
              style: TextStyle(color: Colors.white, fontFamily: "Balooda"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  child: Text('For Appointment:' + drNumber,
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Balooda")),
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
