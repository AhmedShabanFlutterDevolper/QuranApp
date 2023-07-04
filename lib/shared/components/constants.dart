import 'package:flutter/material.dart';
import 'package:quran/shared/components/ArbicNumber.dart';

class ArabicSuraNumber extends StatelessWidget {
  const ArabicSuraNumber({Key? key, required this.i}) : super(key: key);
  final int i;
  @override
  Widget build(BuildContext context) {
    return Text(
      "\uFD3E" + (i + 1).toArabicNumbers.toArabicNumbers + "\uFD3F",
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'QuranSurah2',
          fontSize: 30,
          shadows: [
            Shadow(
              offset: Offset(.5, .5),
              blurRadius: 1.0,
              color: Colors.amberAccent,
            ),
          ]),
    );
  }
}
