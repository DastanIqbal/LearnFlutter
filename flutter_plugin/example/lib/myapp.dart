import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Jinee"),
        ),
        body: new SizedBox.expand(
          child: buildGrid(),
        ),
      ),
    );
  }

  List<GestureDetector> _buildGridTiles() {
    List<GestureDetector> containers = new List<GestureDetector>.generate(
        4,
        (int index) => new GestureDetector(
              onTap: () {
                print("$index");
              },
              child: new Container(
                  child: new Column(
                children: <Widget>[
                  Image.asset('images/pic1.jpg', fit: BoxFit.cover),
                  new Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    child: new Text(
                      "Label",
                      style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.red),
                    ),
                  )
                ],
              )),
            ));
    return containers;
  }

  buildGrid() {
    return new GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      children: _buildGridTiles().toList(),
    );
  }
}
