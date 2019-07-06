import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  Home createState() => Home();
}

class Home extends State<MyApp> {
  String _animationName = "Demo Mode";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yvens Belaston'),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: FlareActor(
                    "assets/house.flr",
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    animation: _animationName,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: SingleCircularSlider(
                      100,
                      0,
                      baseColor: Color(0xff558BC6),
                      child: Padding(
                        padding: const EdgeInsets.all(42.0),
                        child: Center(
                            child: Text('${6}',
                                style: TextStyle(fontSize: 56.0, color: Color(0xff558BC6)))),
                        ),
                      ))
                  ]),
                Row(children: <Widget>[
                  FlatButton(
                    textColor: Color(0xff558BC6),
                    child: Text('to 6'),
                    onPressed: () {
                      setState(() {
                        _animationName = "to 6";
                      });
                    },
                  ),
                  FlatButton(
                    textColor: Color(0xff558BC6),
                    child: Text('to 5'),
                    onPressed: () {
                      setState(() {
                        _animationName = "to 5";
                      });
                    },
                  ),
                  FlatButton(
                    textColor: Color(0xff558BC6),
                    child: Text('to 4'),
                    onPressed: () {
                      setState(() {
                        _animationName = "to 4";
                      });
                    },
                  ),
                  FlatButton(
                    textColor: Color(0xff558BC6),
                    child: Text('to 3'),
                    onPressed: () {
                      setState(() {
                        _animationName = "to 3";
                      });
                    },
                  ),
                ]),
              ],
            ),
          ),
          // child: Container(child: SingleCircularSlider(0, 50, 75, 100)),
        ),
      ),
    );
  }
}
