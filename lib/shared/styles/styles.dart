import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData ligh() => ThemeData(
    fontFamily: 'Caprasimo',
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    listTileTheme: ListTileThemeData(
      textColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.amber,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
        )),
    backgroundColor: Colors.white,
    textTheme: TextTheme(
        bodyText1: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 20.0));
ThemeData dark() => ThemeData(
    drawerTheme: DrawerThemeData(
      backgroundColor: Color(0xFF212121),
    ),
    listTileTheme: ListTileThemeData(
      textColor: Colors.white,
    ),
    textTheme: TextTheme(
        bodyText1: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white)),
    scaffoldBackgroundColor: Color(0xFF212121),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'Caprasimo',
        ),
        backgroundColor: Color(0xFF212121),
        elevation: 0.0,
        titleSpacing: 20.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Color(0xFF212121),
        )),
    backgroundColor: Color(0xFF212121),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.amber,
        backgroundColor: Color(0xFF212121),
        elevation: 20.0));
