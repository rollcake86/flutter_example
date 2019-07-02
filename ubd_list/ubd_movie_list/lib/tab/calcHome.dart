import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClacApplication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CalcHome();
  }
}

class CalcHome extends State<ClacApplication> {
  var ubdResult = "";
  var key = "counter";
  var counter = 0;

  TextEditingController controller = new TextEditingController();
  TextEditingController tipController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadSaveData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              new Icon(
                Icons.arrow_downward,
                size: 50,
              ),
              new Padding(
                padding: EdgeInsets.all(15.0),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Change Value',
                      hintText: '변화된 값입니다',
                      enabled: false,
                      prefixIcon: new Icon(Icons.attach_money),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0)))),
                  controller: tipController,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _calc,
        tooltip: 'calc UBD',
        child: Icon(Icons.repeat),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _loadSaveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = (prefs.getInt(key) ?? 170000);
    });
  }

  void _calc() {
    print('click');
    if (controller.text.length == 0) {
      return;
    }
    setState(() {
      try{
        int money = int.parse(controller.text);
        var result = money * counter;
        ubdResult = result.toString();
        tipController.text = ubdResult;
      }catch(error){
        print(error);
        AlertDialog dialog = new AlertDialog(content: new Text('입력이 잘못되었습니다'),);
        showDialog(context: context , builder: (BuildContext context) => dialog );
      }
    });
  }
}
