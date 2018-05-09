import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_plugin_example/GridItem.dart';

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
          child: _buildGrid(),
        ),
      ),
    );
  }

  _gridTile(GridItem gridItem) {
    return new Card(
      elevation: 2.0,
      child: new InkWell(
        highlightColor: Colors.white.withAlpha(30),
        splashColor: Colors.white.withAlpha(20),
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Expanded(
                  child: Image.asset(gridItem.itemIcon, fit: BoxFit.cover),
                ),
                new Container(
                    margin: EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: new Center(
                        child: new Text(
                      gridItem.itemName,
                      style: new TextStyle(
                          color: Colors.grey[500], fontSize: 15.0),
                    )))
              ],
            )),
          ],
        ),
        onTap: () {
          print(gridItem.itemName);
        },
      ),
    );
  }

  _buildGrid() {
    return new GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      children: _loadGridTiles().toList(),
    );
  }

  _loadGridTiles() {
    List<Widget> widgets = [];
    List<GridItem> gridItems = <GridItem>[
      new GridItem(itemIcon: "images/pic1.jpg", itemName: "APK Extractor"),
      new GridItem(itemIcon: "images/pic1.jpg", itemName: "Apk Decompiler"),
      new GridItem(itemIcon: "images/pic1.jpg", itemName: "Terminal"),
      new GridItem(itemIcon: "images/pic1.jpg", itemName: "Flash")
    ];
    gridItems.forEach((GridItem gridItem) {
      widgets.add(_gridTile(gridItem));
    });
    return widgets;
  }
}
