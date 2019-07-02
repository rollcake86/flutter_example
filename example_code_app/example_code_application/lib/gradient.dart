import 'package:flutter/material.dart';
import 'package:example_code_application/utils.dart' as utils;


class gradient extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new gradientHome();
  }
}

class gradientHome extends State<gradient>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Using Gradient'),),
      body: new Container(
        child: new Center(
          child: new Text("Hello World!" , style: new TextStyle(color: Colors.white),),
        ),
        decoration: new BoxDecoration(
          gradient: utils.getCustomGradient()
        ),
      ),
    );
  }

}