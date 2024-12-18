import 'package:flutter/material.dart';
import 'package:flutter_game/screen/start.dart';
import 'dart:math';
import 'screen/game.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  supportedLocales: [
    const Locale('en', 'US'),
  ],
  home: MyApp(),
),);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
    );
  }
}