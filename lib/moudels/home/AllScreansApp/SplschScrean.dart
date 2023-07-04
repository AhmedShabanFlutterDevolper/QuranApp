import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran/moudels/home/AllScreansApp/Home.dart';

class SplaschScrean extends StatefulWidget {
  const SplaschScrean({super.key});

  @override
  State<SplaschScrean> createState() => _SplaschScreanState();
}

class _SplaschScreanState extends State<SplaschScrean> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScrean()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/Group 3.png'),
              height: double.infinity,
              width: double.infinity,
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.amber,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/images/titleIcon.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Quran',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 40),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
