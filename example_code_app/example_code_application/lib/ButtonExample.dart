import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonExampleState();
  }
}
class ButtonExampleState extends State<ButtonExample> {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', "and", "awesome!"];
  String displatedString = "Hello World";

  void onPressOfButton() {
    setState(() {
      displatedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateful Widget'),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displatedString, style: new TextStyle(fontSize: 40.0)),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                  child: new Text(
                    'Press me',
                    style: new TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: onPressOfButton)
            ],
          ),
        ),
      ),
    );
  }
}