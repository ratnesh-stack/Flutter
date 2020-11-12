import 'package:flutter/material.dart';
import 'PreviewPage.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(color: Colors.blueGrey.shade50),
          ),
          PreviewPage(),
        ],
      ),
    );
  }
}
