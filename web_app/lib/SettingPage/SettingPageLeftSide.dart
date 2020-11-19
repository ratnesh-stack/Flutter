import 'dart:html';

import 'package:flutter/material.dart';
import 'package:web_app/Constants.dart';

class SettingPageLeftSide extends StatelessWidget {
  const SettingPageLeftSide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          color: Colors.blueGrey.shade50,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("Your Links", style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 50),
              SizedBox(
                width: constraints.maxWidth * 0.6,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.greenAccent.shade400,
                  child: Text("Add Button"),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: constraints.maxWidth * 0.6,
                height: constraints.maxWidth * 0.5,
                child: ReorderableListView(
                  children: [
                    for (var document in documents)
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        title: Text(document.title),
                        key: Key(document.title),
                        leading: Icon(Icons.drag_indicator),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.drag_indicator),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.drag_indicator),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                  ],
                  onReorder: (oldIndex, newIndex) {},
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
