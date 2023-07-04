import 'package:flutter/material.dart';
import 'package:quran/shared/network/local/sharedpreferences/shared_preferences.dart';

import '../../../../shared/components/componenets.dart';

class SettingsScrean extends StatefulWidget {
  const SettingsScrean({super.key});

  @override
  State<SettingsScrean> createState() => _SettingsScreanState();
}

class _SettingsScreanState extends State<SettingsScrean> {
  double font = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                color: Colors.amber,
                width: 5,
              )),
          leadingWidth: 100,
          title: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/titleIcon.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Quran',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Text(
                  'The settings will be added in the next update ',
                  style: TextStyle(color: Colors.amber),
                )
              ],
            ),
          ),
        ));
  }
}
