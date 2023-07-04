import 'package:flutter/material.dart';

import 'package:quran/moudels/home/AllScreansApp/SplschScrean.dart';

import 'package:quran/shared/network/local/local.dart';
import 'package:quran/shared/styles/styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await readJson();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ligh(),
      darkTheme: dark(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: SplaschScrean(),
    );
  }
}
