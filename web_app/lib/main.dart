import 'package:flutter/material.dart';
import 'package:web_app/LandingPage.dart';
import 'package:web_app/NotFoundPage.dart';
import 'package:web_app/SettingPage.dart';
//import 'LandingPage.dart';
import './SettingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LandingPage(),
        "/settings": (context) => SettingPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return NotFoundPage();
          },
        );
      },
    );
  }
}
