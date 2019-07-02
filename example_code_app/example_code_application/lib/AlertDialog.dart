import 'package:flutter/material.dart';
import 'dart:convert';

class Alert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AlertDialogApp();
  }
}

class AlertDialogApp extends State<Alert> {

  AlertDialog dialog = new AlertDialog(
    content: new Text("Hello World", style: new TextStyle(fontSize: 30.0),),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Using Alert Dialog'),
      ),
      body: new Container(
        child: new Center(
          child: new RaisedButton(
              child: new Text("Hit to alert!"),
              onPressed: () {
                showDialog(
                    context: context, builder: (BuildContext context) => dialog);
              }),
        ),
      ),
    );
  }
}