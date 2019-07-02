import 'package:flutter/material.dart';
import 'dart:math';

class animation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new animationHome();
  }
}

class animationHome extends State<animation> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Using Animate'),
        ),
        body: new Center(
          child: new AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(image: getRandIcon(),
                color: _color, borderRadius: _borderRadiusGeometry),
            curve: Curves.fastOutSlowIn,
            duration: Duration(seconds: 2),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              final random = Random();

              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);

              _borderRadiusGeometry =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ));
  }

  DecorationImage getRandIcon(){
    var rand = Random();
    int r = rand.nextInt(5);
    if(r == 1){
      return new DecorationImage(image: AssetImage('repo/social/facebook.png') );
    }else if(r == 2){
      return new DecorationImage(image: AssetImage('repo/social/google_plus.png') );
    }else if(r == 3){
      return new DecorationImage(image: AssetImage('repo/social/instagram.png') );
    }else if(r == 4){
      return new DecorationImage(image: AssetImage('repo/social/twitter.png') );
    }else {
      return new DecorationImage(image: AssetImage('repo/social/linkedin.png') );
    }
  }
}
