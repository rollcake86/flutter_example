import 'package:flutter/material.dart';

import 'sharedHome.dart';
import 'calcHome.dart';
import 'movie.dart';



class TabHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabHomeApp();
  }
}

class TabHomeApp extends State<TabHome> with SingleTickerProviderStateMixin {

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
      title: new Text('UBD Movie List'),
      backgroundColor: Colors.blueGrey,
    ),
      body: new TabBarView(children: <Widget>[new MyHomePage() , new ClacApplication() , new SharedApp() ] , controller: tabController,),

      bottomNavigationBar: new Material(
        color: Colors.blueGrey,
        child: new TabBar(tabs: <Tab>[
          new Tab(
            icon: new Icon(Icons.movie),
          ),
          new Tab(
            icon: new Icon(Icons.trending_up),
          ),   new Tab(
            icon: new Icon(Icons.save),
          ),
        ],
          controller: tabController,),
      ),
    );
  }
}

