import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SharedAppHome();
  }
}

class SharedAppHome extends State<SharedApp> {
  var nameOfApp = "Presist Key Value";
  var counter = 0;
  var key = "counter";

  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadSaveData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('UBD Defalut Value' ,style: TextStyle(fontSize: 20.0),),
              new Padding(
                padding: EdgeInsets.all(15.0),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'UBD',
                      hintText: '숫자를 입력하세요',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0)))),
                  controller: controller,
                ),
              ),
            ],mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveData,
        tooltip: 'Save UBD',
        child: Icon(Icons.save),
      ), // T
    );
  }

  void _loadSaveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = (prefs.getInt(key) ?? 170000);
      controller.text = counter.toString();
    });
  }

  void _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (controller.text.length == 0) {
      return;
    }
    setState(() {
      try {
        int result = int.parse(controller.text);
        prefs.setInt(key, result);
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('데이터가 저장되었습니다'), duration: Duration(seconds: 2)));
      } catch (error) {
        print(error);
        AlertDialog dialog = new AlertDialog(
          content: new Text('입력이 잘못되었습니다'),
        );
        showDialog(context: context, builder: (BuildContext context) => dialog);
      }
    });
  }
}
