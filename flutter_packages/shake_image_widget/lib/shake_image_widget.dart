library shake_image_widget;

import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShakeImage extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;
  _ShakeImage shakeMethod ;

  ShakeImage({Key key, this.imagePath, this.width, this.height})
      : super(key: key);

  void StartAnimation(){
    shakeMethod.StartAni();
  }

  @override
  State<StatefulWidget> createState() {
    shakeMethod = _ShakeImage(imagePath, width, height);
    return shakeMethod;
  }
}

class _ShakeImage extends State<ShakeImage>
    with SingleTickerProviderStateMixin {
  bool _isRotated = false;
  AnimationController animationController;
  Animation<double> animation;

  final String imagePath;
  double width = 200;
  double height = 200;
  double offset;

  _ShakeImage(this.imagePath, this.width, this.height);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    )..addListener(() => setState(() {
    }));

    animation = Tween<double>(
      begin: 50.0,
      end: 120.0,
    ).animate(animationController);

    double progress = animationController.value;
    offset = sin(progress * pi * 10.0);

  }

  void StartAni(){
    if (_isRotated)
      animationController.reverse();
    else
      animationController.forward();

    _isRotated = !_isRotated;
  }

  @override
  void dispose() {
    if (animationController != null) animationController.dispose();
    super.dispose();
  }

  double _getX(){
    double progress = animationController.value;
    double offset = sin(progress * pi * 10.0);
    return offset * 4;
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.translationValues(_getX()  , 0.0, 0.0),
        child: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
          height: this.height,
          width: this.width,
        ));
  }
}
