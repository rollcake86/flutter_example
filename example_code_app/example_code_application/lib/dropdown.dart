import 'package:flutter/material.dart';

class dropDwon extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new dropDownHome();
  }
}

class dropDownHome extends State<dropDwon>{

  List _fruits = ["Apple" , "Banana" , "Pineapple" , "Manggo" , "Grapes"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedFruits;

  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_fruits);
    _selectedFruits = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = new List();
    for(String fruit in fruits){
      items.add(new DropdownMenuItem(value: fruit, child: new Text(fruit)));
    }
    return items;
  }

  void changeDropDownItem(String selectedFruit){
    setState(() {
      _selectedFruits = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('DropDown Button Example'),),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Please choose a fruit: "), 
              new DropdownButton(items: _dropDownMenuItems, onChanged: changeDropDownItem , value: _selectedFruits,),
              new Image.network('https://github.com/nisrulz/flutter-examples/raw/develop/image_from_network/img/flutter_logo.png')
            ],
          ),
        ),
      ),
    );
  }
}