import 'package:flutter/material.dart';
import 'package:example_code_application/utils.dart' as utils;


class font extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new fontHome();
  }
}

class fontHome extends State<font>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Using Cusom Fonts'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('The quick brown fox jumps over the lazy dog' , style: utils.getCustomFontTextStyle() ,textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }

}
