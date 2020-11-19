import 'package:flutter/material.dart';
import 'SettingPageRightSide.dart';
import 'SettingPageLeftSide.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SettingPageLeftSide(),
          SettingPageRightSide(),
        ],
      ),
    );
  }
}
