import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Using SnackBar'),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
      child: new Text('show SnackBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Hello! I am SnackBar :) "),
          duration: new Duration(seconds: 3),
          action: new SnackBarAction(
              label: "Hit Me (Action)",
              onPressed: () {
                context:
                new Text("Hello! I am shown becoz you pressed Action :");
              }),
        ));
      },
    );
  }
}
