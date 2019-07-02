import 'package:flutter/material.dart';
import 'model/contact.dart';
import 'dart:math';

class ContractListItem extends StatelessWidget {
  
  final ContactModal _contractModel;
  
  ContractListItem(this._contractModel);
  
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: (){
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text(_contractModel.fullName),
          duration: new Duration(seconds: 3),
          action: new SnackBarAction(
              label: "Hit Me (Action)",
              onPressed: () {
                context:
                new Text("Hello! I am shown becoz you pressed Action :");
              }),
        ));
      },
      leading: new CircleAvatar(child: getIcons(), foregroundColor: Colors.greenAccent, backgroundColor: Colors.blueGrey,),
      title: new Text(_contractModel.fullName),
      subtitle: new Text(_contractModel.email),

    );
  }

  Icon getIcons(){
    int rand = new Random().nextInt(4);
    if(rand == 1){
      return new Icon(Icons.adb);
    }else if(rand == 2){
      return new Icon(Icons.account_box);
    }else if(rand == 3){
      return new Icon(Icons.share);
    }else{
      return new Icon(Icons.airport_shuttle);
    }
  }

}