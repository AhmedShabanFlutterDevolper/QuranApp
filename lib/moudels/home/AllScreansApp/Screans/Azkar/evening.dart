import 'package:flutter/material.dart';

class EveningScrean extends StatefulWidget {
  const EveningScrean({super.key});

  @override
  State<EveningScrean> createState() => _EveningScreanState();
}

class _EveningScreanState extends State<EveningScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Evening'),
    );
  }
}
