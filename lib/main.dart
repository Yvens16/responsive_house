import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

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
        ),
      ),
    );
  }
}
