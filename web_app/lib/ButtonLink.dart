import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key key,
    @required this.title,
    @required this.url,
  }) : super(key: key);

  final String title, url;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        width: width > 680 ? 680 : width * .9,
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 32),
          onPressed: () => launch(url),
          child: Text(title),
          color: Colors.teal,
        ),
      ),
    );
  }
}
