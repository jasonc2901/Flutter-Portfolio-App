import 'package:flutter/material.dart';
import 'package:udemy_course_i_am_rich/screens/Projects.dart';
import 'package:udemy_course_i_am_rich/screens/about_me.dart';
import 'package:udemy_course_i_am_rich/utilities/hobbies.dart';
import 'package:udemy_course_i_am_rich/utilities/languages.dart';
import 'package:udemy_course_i_am_rich/utilities/top3_projects.dart';
import 'package:udemy_course_i_am_rich/widgets/slide_item.dart';
import 'package:udemy_course_i_am_rich/widgets/circularSlideItem.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(80, 80, 80, 100),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromRGBO(31, 31, 31, 100),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Projects",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                FlatButton(
                  child: Text(
                    "View All",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      //This creates the route to change pages
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Projects();
                      }),
                    );
                  },
                ),
              ],
            ),

            SizedBox(
              height: 10.0,
            ),

            //Horizontal scrolling list here
            Container(
              height: MediaQuery.of(context).size.height / 2.4,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: projects == null ? 0 : projects.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map project = projects[index];

                    return Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: SlideItem(
                        img: project["img"],
                        backgroundImg: project["backgroundImg"],
                        title: project["title"],
                        description: project["description"],
                        brief: project["brief"],
                        difficulty: project["difficulty"],
                      ),
                    );
                  }),
            ),

            SizedBox(
              height: 10.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Hobbies",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                FlatButton(
                  child: Text(
                    "More Info",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      //This creates the route to change pages
                      MaterialPageRoute(builder: (BuildContext context) {
                        return AboutMe();
                      }),
                    );
                  },
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4.9,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: hobbies == null ? 0 : hobbies.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map hobby = hobbies[index];

                    return Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: circularSlideItem(
                        img: hobby["img"],
                        title: hobby["title"],
                        width: hobby["width"],
                        height: hobby["height"],
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Languages",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                FlatButton(
                  child: Text(
                    "More Info",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      //This creates the route to change pages
                      MaterialPageRoute(builder: (BuildContext context) {
                        return FlutterLogo(colors: Colors.red);
                      }),
                    );
                  },
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5.2,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: languages == null ? 0 : languages.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map language = languages[index];

                    return Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: circularSlideItem(
                        img: language["img"],
                        title: language["title"],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
