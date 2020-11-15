import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LinkLandingPage(),
    );
  }
}

class LinkLandingPage extends StatelessWidget {
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
          SizedBox(
            height: 20,
          ),
          ButtonLink(title: "Youtube"),
          ButtonLink(title: "LinkedIn"),
          ButtonLink(title: "Facebook"),
        ],
      ),
    );
  }
}

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        width: width > 680 ? 680 : width * .9,
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 32),
          onPressed: () {},
          child: Text(title),
          color: Colors.teal,
        ),
      ),
    );
  }
}

const image =
    "https://pbs.twimg.com/profile_images/1287942202870521856/_eifSMil_400x400.jpg";
