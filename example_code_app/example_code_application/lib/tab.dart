import 'package:flutter/material.dart';
import 'package:example_code_application/tab/first.dart';
import 'package:example_code_application/tab/second.dart';
import 'package:example_code_application/tab/third.dart';


class TabHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabHomeApp();
  }
}

class TabHomeApp extends State<TabHome> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(tabs: <Tab>[
      new Tab(icon: new Icon(Icons.favorite),),
      new Tab(icon: new Icon(Icons.adb),),
      new Tab(icon: new Icon(Icons.airport_shuttle),),
    ],
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
        appBar: new AppBar(
          // Title
            title: new Text("Using Tabs"),
            // Set the background color of the App Bar
            backgroundColor: Colors.blue,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[new First(), new Second(), new Third()]));
  }
}

