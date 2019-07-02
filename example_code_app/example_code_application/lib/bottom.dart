import 'package:flutter/material.dart';
import 'package:example_code_application/tab/first.dart';
import 'package:example_code_application/tab/second.dart';
import 'package:example_code_application/tab/third.dart';


class bottom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new bottomApp();
  }
}

class bottomApp extends State<bottom> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(appBar: new AppBar(
      title: new Text('Using Bottom Navigation Bar'),
      backgroundColor: Colors.blue,
    ),
    body: new TabBarView(children: <Widget>[new First() , new Second() , new Third()] , controller: tabController,),

      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(tabs: <Tab>[
          new Tab(
            icon: new Icon(Icons.favorite),
          ),
          new Tab(
            icon: new Icon(Icons.adb),
          ),
          new Tab(
            icon: new Icon(Icons.airport_shuttle),
          ),
        ],
        controller: tabController,),
      ),
    );
  }

}
