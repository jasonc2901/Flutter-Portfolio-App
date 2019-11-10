import 'package:flutter/material.dart';
import 'package:udemy_course_i_am_rich/screens/Projects.dart';
import 'package:udemy_course_i_am_rich/utilities/top3_projects.dart';
import 'package:udemy_course_i_am_rich/widgets/slide_item.dart';

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
      backgroundColor: Color.fromRGBO(80, 80, 80,100),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromRGBO(31,31,31,100),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
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
                    color: Colors.white
                  ),
                ),
                FlatButton(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                      ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(
                      //This creates the route to change pages
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return Projects();
                        }
                      ),
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
              height: MediaQuery.of(context).size.height/2.4,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: projects == null ? 0 : projects.length,
                itemBuilder: (BuildContext context,int index){
                  Map project = projects[index];

                  return Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: SlideItem(
                      img: project["img"],
                      title: project["title"],
                      description: project["description"],
                      brief: project["brief"],
                      difficulty: project["difficulty"],
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),

      
    );
  }
}
