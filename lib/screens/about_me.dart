import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:udemy_course_i_am_rich/screens/me_content.dart';
import 'package:udemy_course_i_am_rich/utilities/hobbies.dart';
import 'package:udemy_course_i_am_rich/widgets/circularSlideItem.dart';

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
              _getContent(context),
               
              // _getGradient(),
               
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
          height: 300.0,
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
    margin: new EdgeInsets.only(top: 235.0),
    height: 25.0,
    decoration: new BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.grey[700], Colors.grey[600],Colors.grey[500]],
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

Widget _getContent(BuildContext context) {
   final _overviewTitle = "About Me".toUpperCase();
   final _hobbiesTitle = "my hobbies".toUpperCase();
    return new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 32.0),

          children: <Widget>[
            _getBackground(),
            new me_summary(
              horizontal: false,
            ),
            new Container(
              padding: EdgeInsets.only(left: 12,right: 12),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              child: Center(
                child: new Text("My name is Jason Caughers, I am a Software Engineering student currently studying a Bachelor's of Engineering at Queen's University Belfast.\n\nI am currently doing a year long internship at Citibank as an Application Production Support Analyst.\n\nHere I get the opportunity to work with various technologies such as Python, Java, HTML and SQL.\n", 
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
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

            Container(
              height: MediaQuery.of(context).size.height/2.4,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: hobbies == null ? 0 : hobbies.length,
                itemBuilder: (BuildContext context,int index){
                  Map hobby = hobbies[index];

                  return Padding(
                    padding: EdgeInsets.only(left:15.0,right: 10.0),
                    child: circularSlideItem(
                      img: hobby["img"],
                      title: hobby["title"],
                      width: hobby["width"],
                      height: hobby["height"],
                    ),
                  );
                }
              ),

            ),
          ],

    );
  }