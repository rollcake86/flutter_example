import 'package:flutter/material.dart';
import 'dart:convert';

class JsonApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new JsonAppState();
  }
}

class JsonAppState extends State<JsonApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load loacl JSON file"),
      ),
      body: new Container(
        child: new Center(
          // Use future builder and DefaultAssetBundle to load the local JSON file
          child: new FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('repo/starwars_data.json'),
              builder: (context, snapshot) {
                var new_data = json.decode(snapshot.data.toString());

                return new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text("Name: " + new_data[index]['name']),
                          new Text("Height: " + new_data[index]['height']),
                          new Text("Mass: " + new_data[index]['mass']),
                          new Text(
                              "Hair Color: " + new_data[index]['hair_color']),
                          new Text("Gender: " + new_data[index]['gender'])
                        ],
                      ),
                    );
                  },
                  itemCount: new_data == null ? 0 : new_data.length,
                );
              }),
        ),
      ),
    );
  }
}