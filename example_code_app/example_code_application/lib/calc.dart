import 'package:flutter/material.dart';

class TipCalculator extends StatelessWidget{

  double billAmount = 0.0;
  double tipPersentage = 0.0;


  @override
  Widget build(BuildContext context) {

    TextField billAmountField = new TextField(
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try{
          billAmount = double.parse(value);
        }catch(exception){
          billAmount = 0.0;
        }
      },
      decoration: new InputDecoration(labelText: "Bill amount(\$)"),
    );


    TextField tipPercentageField = new TextField(
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(labelText: "Tip %" , hintText:  "15"),
      onChanged: (String value){
        try{
          tipPersentage = double.parse(value);
        }catch(exception){
          tipPersentage = 0.0;
        }
      },
    );

    RaisedButton calculateButton = new RaisedButton(
        child: new Text("Calculate"),
        onPressed: (){
        double calculatedTip = billAmount * tipPersentage / 100.0;
        double total = billAmount + calculatedTip;

        AlertDialog dialog = new AlertDialog(
          content: new Text("Tip: \$$calculatedTip \n"
          "Total: \$$total"),
        );
        showDialog(context: context , builder: (BuildContext context) => dialog);
    });
    
    Container container = new Container(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[billAmountField , tipPercentageField , calculateButton],
      ),
    );

    AppBar appBar = new AppBar(title: new Text("Tip Calculator"),);

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container,);
    return scaffold;
  }

}