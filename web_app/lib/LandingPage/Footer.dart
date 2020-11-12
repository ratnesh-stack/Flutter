import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Made with Flutter",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(width: 8),
        Image.network(
          "https://www.didierboelens.com/images/blog/hummingbird_logo.png",
          width: 25,
        )
      ],
    );
  }
}
