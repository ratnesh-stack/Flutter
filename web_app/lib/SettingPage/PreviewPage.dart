import 'package:flutter/material.dart';
import 'package:web_app/LandingPage/LandingPage.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Text("Preview"),
          LandingPage(),
        ],
      ),
    );
  }
}
