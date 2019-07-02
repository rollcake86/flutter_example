import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class shared extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new sharedHome();
  }
}

class sharedHome extends State<shared>{

  var nameOfApp = "Presist Key Value";
  var counter = 0;
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSaveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Example'),),
      body: Center(
        child: Text('$counter'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: setCount),
    );
  }

  void _loadSaveData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = (prefs.getInt(key) ?? 0);
    });
  }


  Future<bool> setCount() async{
    setState(() {
      counter++;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, counter);

  }
}