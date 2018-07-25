import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApkExtractorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Apk Extractor"),
      ),
      body: new PackageList(),
    );
  }
}

class PackageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(child: new ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return new Divider();
      return _loadPackages();
    }));
  }

  _loadPackages() {
  }
}
