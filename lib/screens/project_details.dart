import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_course_i_am_rich/screens/Projects.dart';

class Project_Details extends StatefulWidget{
  final String img;
  final String title;
  final String backgroundImg;
  final String description;
  final String difficulty;

  Project_Details(
      {Key key,
      @required this.img,
      @required this.title,
      @required this.description,
      @required this.backgroundImg,
      @required this.difficulty})
      : super(key: key);

  @override
  _Project_Details_State createState() => _Project_Details_State();
}

class _Project_Details_State extends State<Project_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: new AppBar(
          title: new Text("My Projects"),
          backgroundColor: Color.fromRGBO(31, 31, 31, 100),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Colors.grey[700],
                  image: DecorationImage(
                      image: AssetImage("${this.widget.backgroundImg}"),
                      fit: BoxFit.fill
                    )
                  ),
              child: new ListView(
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(top: 70),
                  ),
                  new Center(
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage(
                        this.widget.img,
                      ),
                      backgroundColor: Colors.transparent,
                      minRadius: 70,
                      maxRadius: 70,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  new Center(
                    child: Text(
                      "${this.widget.title}",
                      style: TextStyle(shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.white,
                          offset: Offset(5.0, 5.0),
                        ),
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(10.0, 10.0),
                        ),
                      ], color: Colors.white, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(
              padding: EdgeInsets.all(20),
              //color: Color.fromRGBO(80, 80, 80, 100),
              child: ListBody(
                children: <Widget>[
                  Text(
                    "Difficulty Rating: ${this.widget.difficulty}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w200),
                        textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(vertical: 5.0),
                    height: 2.0,
                    width: 20.0,
                    color: new Color(0xff00c6ff),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    "About this project:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w200),
                        textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    "${this.widget.description}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w200),
                        textAlign: TextAlign.left,
                  ),



                ],
              ),
            ),
          ],
        ));
  }
}
