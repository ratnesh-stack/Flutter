import 'package:flutter/material.dart';
import './Footer.dart';
import 'ButtonLink.dart';
import './Constants.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            backgroundColor: Colors.white,
            radius: 50,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "@socialHandle",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(height: 20),
          for (var document in documents)
            ButtonLink(title: document.title, url: document.url),
          Spacer(),
          Footer(),
          SizedBox(height: 32)
        ],
      ),
    );
  }
}
