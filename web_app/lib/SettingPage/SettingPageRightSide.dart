import 'package:flutter/material.dart';
import 'package:web_app/LandingPage/LandingPage.dart';

class SettingPageRightSide extends StatelessWidget {
  const SettingPageRightSide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Preview",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(width: 10),
                    ),
                    child: LandingPage(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
