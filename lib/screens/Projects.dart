import 'package:flutter/material.dart';
import 'package:udemy_course_i_am_rich/screens/home.dart';
import 'package:udemy_course_i_am_rich/utilities/all_projects.dart';
import 'package:udemy_course_i_am_rich/widgets/viewAll.dart';

class Projects extends StatefulWidget {
  @override
  _Projects_state createState() => _Projects_state();
}

class _Projects_state extends State<Projects> {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: new AppBar(
        title: new Text("My Projects"),
        backgroundColor: Color.fromRGBO(31,31,31,100),
        centerTitle: true,
        leading: IconButton(
          icon:Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          
          }
          ),
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),

            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projects == null ? 0 :projects.length,
              itemBuilder: (BuildContext context, int index) {
                Map project = projects[index];

                return ViewAll(
                  img: project["img"],
                  backgroundImg: project["backgroundImg"],
                  title: project["title"],
                  description: project["description"],
                  brief: project["brief"],
                  difficulty: project["difficulty"],

                );
              },
            ),

            SizedBox(height: 10.0),

          ],
        ),
      ),
    );
  }
}
