import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load local image"),
      ),
      body: new Container(
        child: new Center(
          child: new Text(
            "Hello World",
            style: new TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        ),
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('repo/bg1.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
