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
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 2,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  border: Border.all(width: 10),
                ),
                child: LandingPage(),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
