import 'package:flutter/material.dart';

class MyGridView {
  Card getStructuredGridCell(name, image) {
    return new Card(
      elevation: 1.5,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          new Image(image: new AssetImage('repo/social/' + image)),
          new Center(
            child: new Text(name),
          )
        ],
      ),
    );
  }

  GridView build() {
    return new GridView.count(
      primary: true,
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "facebook.png"),
        getStructuredGridCell("Twitter", "twitter.png"),
        getStructuredGridCell("Instagram", "instagram.png"),
        getStructuredGridCell("Linkedin", "linkedin.png"),
        getStructuredGridCell("Google Plus", "google_plus.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
      ],
    );
  }
}
