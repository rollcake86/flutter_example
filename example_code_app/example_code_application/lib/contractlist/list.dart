import 'package:flutter/material.dart';
import 'package:example_code_application/contract_page.dart';

class list extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(title: new Text('Using Listview'),),
      body: new ContracPage(),
    );;
  }

}