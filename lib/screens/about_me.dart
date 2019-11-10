import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:udemy_course_i_am_rich/screens/me_content.dart';


class AboutMe extends StatefulWidget{
  @override
  _AboutMeState createState() => _AboutMeState(); 
}



class _AboutMeState extends State<AboutMe>{
   @override
    Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Colors.grey[500],
        body: new Container(
          constraints: new BoxConstraints.expand(),
          color: Color.fromRGBO(31,31,31,100),
          child: new Stack (
          children: <Widget>[
               _getContent(),
               _getBackground(),
               _getGradient(),
               
            ],
          ),
        ),
      );
    }
}

Container _getBackground () {
    return new Container(
      color: Colors.grey[400],
        child: new SizedBox(
          height: 250.0,
          child: new Carousel(
            images: [
              Image.asset('assets/banner3.jpg',
              fit: BoxFit.cover,
              ),
              Image.asset('assets/code.jpg',
              fit: BoxFit.cover,
              ),
              Image.asset('assets/computer.jpg',
              fit: BoxFit.cover,
              ),
            ],
            //hides the dots
            dotColor: Colors.transparent,
            dotBgColor: Colors.transparent,
            dotSize: 0.0,
          ),
        ),
        
      );
}

Container _getGradient() {
  return new Container(
    margin: new EdgeInsets.only(top: 200.0),
    height: 50.0,
    decoration: new BoxDecoration(
      gradient: new LinearGradient(
      colors: <Color>[
        new Color(0x999999),
        new Color(0xFF736AB7)
      ],
      
      stops: [0.0, 0.9],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      ),
    ),
  );
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(top: 20),
      margin: new EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 180.0,
      color: new Color(0xff00c6ff)
    );
  }
}

Widget _getContent() {
   final _overviewTitle = "About Me".toUpperCase();
   final _hobbiesTitle = "my hobbies".toUpperCase();
      return new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
          children: <Widget>[
            new me_summary(
              horizontal: false,
            ),
            new Container(
              padding: new EdgeInsets.only(left: 20, right: 20),
              child: new Column(
                children: <Widget>[
                  new Text(
                    _overviewTitle,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  new Separator(),
                  new Text("My name is Jason Caughers, I am a Software Engineering student currently studying a Bachelor's of Engineering at Queen's \nUniversity Belfast.\n", 
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                  new Text("I am currently doing a year long \ninternship at Citibank as an Application Production Support Analyst. Here I get the opportunity to work with various technologies such as Python, \nJava, HTML and SQL.\n", 
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                  new Text("For me the attraction to Software\nEngineering began when I realised the\nnever ending possibilities of what I can create through code.\n", 
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            

            new Container(
              child: new Column(
                children: <Widget>[
                  new Text(
                    _hobbiesTitle,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  new Separator(),
                ],

              ),
            ),
          ],

    );
  }