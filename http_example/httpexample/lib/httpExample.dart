import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyGetHttpData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyGetHttpDataApp();
  }
}

class MyGetHttpDataApp extends State<MyGetHttpData> {
  final String url = "https://swapi.co/api/people";
  List data;

  Future<String> getJSONData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var dataConvertedToJSON = json.decode(response.body);
      data = dataConvertedToJSON['results'];
    });

    return "Successfull";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Retrieve JSON Data via HTTP GET'),
      ),
      body: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Card(
                      child: new Container(
                        child: new Text(data[index]['name'],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.lightBlueAccent),),
                        padding: EdgeInsets.all(15.0),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Call the getJSONData() method when the app initializes
    this.getJSONData();
  }
}