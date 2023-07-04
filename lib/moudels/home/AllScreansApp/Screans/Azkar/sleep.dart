import 'package:flutter/material.dart';

class SleepScrean extends StatefulWidget {
  const SleepScrean({super.key});

  @override
  State<SleepScrean> createState() => _SleepScreanState();
}

class _SleepScreanState extends State<SleepScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('sleep'),
    );
  }
}
