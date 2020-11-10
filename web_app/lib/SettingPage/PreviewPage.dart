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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "Preview",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Expanded(child: LandingPage()),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
