import 'package:flutter/material.dart';

class LandingPageData {
  final String title, url;
  LandingPageData({@required this.title, @required this.url});
}

final documents = [
  LandingPageData(title: "Youtube", url: "https://youtube.com"),
  LandingPageData(title: "Linkedin", url: "https://linkedin.com"),
  LandingPageData(title: "Twitter", url: "https://twitter.com"),
];

const image =
    "https://pbs.twimg.com/profile_images/1287942202870521856/_eifSMil_400x400.jpg";
