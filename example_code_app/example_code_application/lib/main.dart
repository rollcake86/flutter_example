import 'package:example_code_application/AlertDialog.dart';
import 'package:example_code_application/Animation.dart';
import 'package:example_code_application/ButtonExample.dart';
import 'package:example_code_application/EditTextExample.dart';
import 'package:example_code_application/IconList.dart';
import 'package:example_code_application/ImageExample.dart';
import 'package:example_code_application/JsonExample.dart';
import 'package:example_code_application/Shared.dart';
import 'package:example_code_application/bottom.dart';
import 'package:example_code_application/calc.dart';
import 'package:example_code_application/contract_page.dart';
import 'package:example_code_application/dropdown.dart';
import 'package:example_code_application/gradient.dart';
import 'package:example_code_application/helloworld.dart';
import 'package:example_code_application/infinit.dart';
import 'package:example_code_application/snack.dart';
import 'package:example_code_application/stepper.dart';
import 'package:example_code_application/tab.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examples app'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("hello World Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HelloWorld()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("Snack Bar Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactPage()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("Animation Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => animation()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("bottom Tab Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bottom()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("dropDwon Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dropDwon()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("ContracPage Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContracPage()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("gradient Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => gradient()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("infinit Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => infinit()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("shared Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => shared()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("StepperHome Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StepperHome()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("TabHome Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabHome()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("TipCalculator Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TipCalculator()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("CutomIcon list Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IconList()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("MyButton Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ButtonExample()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("MyEditText Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyEditText()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("ImageApp Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImageApp()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("JsonApp Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JsonApp()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                    child: Text("Alert Example"),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    shape: Border.all(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Alert()),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
