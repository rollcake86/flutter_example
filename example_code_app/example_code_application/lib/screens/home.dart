import 'package:flutter/material.dart';
import 'settings.dart';
import 'account.dart';

class homeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new homeScreenState();
  }
}

class homeScreenState extends State<homeScreen>{

  Drawer getNavDrawer(BuildContext context){
    var headerChild = new DrawerHeader(child: new Text('Header'));
    var aboutChild = new AboutListTile(
      child: new Text('About'),
      applicationName: "Application Name",
      applicationVersion: "v1.0.0",
      applicationIcon: new Icon(Icons.adb),
      icon: new Icon(Icons.info),
    );

    ListTile getNavItem(var icon, String s , String routeName){
      return new ListTile(
        leading: new Icon(icon),
        title: new Text(s),
        onTap: (){
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild ,
      getNavItem(Icons.settings, "Settings", SettingsScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild
    ];
    ListView listView = new ListView(children: myNavChildren);

    return new Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigaion Drawer Example"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Screen"),
        ),
      ),
      drawer: getNavDrawer(context),
    );
  }
}
