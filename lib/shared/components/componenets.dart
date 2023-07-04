import 'package:flutter/material.dart';

// int currentAzkarIndex = 0;
// int CurrentQuranIndex = 0;
int onTap1 = 0;
int onTap2 = 0;
int onTap3 = 0;
int onTap4 = 0;

//fr
int onTap5 = 0;
int onTap6 = 0;
int onTap7 = 0;
int onTap8 = 0;
//sy
int onTap = 0;
int onTap9 = 0;
int onTap10 = 0;

void NavigatorAndFinshed(context, Widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => Widget),
    (Route<dynamic> route) => false,
  );
}

void NavigatorTo(context, Widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));
}

Widget SizeBox(context) => SizedBox(
      height: 5,
    );
Widget line(context) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 4,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(50)),
      ),
    );
Widget line1(context) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 4,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(50)),
      ),
    );
Widget line2(context) => Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 10),
      child: Container(
        width: double.infinity,
        height: 4,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(50)),
      ),
    );
Widget line3(context) => Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
      child: Container(
        width: double.infinity,
        height: 4,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(50)),
      ),
    );

// Widget Quran(context) => Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Container(
//         height: 110,
//         decoration: BoxDecoration(
//             color: Colors.amber, borderRadius: BorderRadius.circular(50)),
//         child: MaterialButton(
//           onPressed: () {
//             fabIsClicked = false;
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => SurahBuilder(
//                         arabic: quran[0],
//                         sura: i,
//                         suraName: arabicName[i]['name'],
//                         ayah: 0,
//                       )),
//             );
//           },
//           child: Row(
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundColor: Colors.grey,
//                 child: Text(
//                   '${arabic[1]['id']}',
//                   style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.amber),
//                 ),
//               ),
//               Spacer(),
//               Text(
//                 '${arabic[1]['sura_name_ar']}',
//                 style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     fontSize: 30,
//                     color: Colors.black45),
//               )
//             ],
//           ),
//         ),
//       ),
//     );

String faceBook = 'https://www.facebook.com/Mohmedomedov7xmedo82345688';
String gitHub = 'https://github.com/AhmedShabanFlutterDevolper';
String WhatApp = 'https://wa.me/qr/JRVJU3UWI7CRB1';
String linkedin = 'https://www.linkedin.com/in/ahmed-shaban-184049239/';
String instagram =
    'https://www.instagram.com/its__2ahmed_1/?igshid=ZDdkNTZiNTM%3D';
String gitHubIcon = 'assets/images/gihub.png';
String WhatsAppIcon = 'assets/images/whatsapp.png';
String faceBookIcon = 'assets/images/facebook.png';
String LinkedInIcon = 'assets/images/linkedin.png';
String instagramIcon = 'assets/images/instagram.png';
