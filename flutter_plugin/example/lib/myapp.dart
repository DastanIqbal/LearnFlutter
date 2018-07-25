import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_plugin_example/apk_extractor.dart';
import 'package:flutter_plugin_example/dash.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/apk': (BuildContext context) => new ApkExtractorWidget(),
      },
    );
  }
}
