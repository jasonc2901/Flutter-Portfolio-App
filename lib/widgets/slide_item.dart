import 'package:flutter/material.dart';
import 'package:udemy_course_i_am_rich/screens/Projects.dart';
import 'package:udemy_course_i_am_rich/screens/project_details.dart';
import 'package:udemy_course_i_am_rich/utilities/const.dart';

class SlideItem extends StatefulWidget {
  
  final String img;
  final String backgroundImg;
  final String title;
  final String description;
  final String brief;
  final String difficulty;

  SlideItem({
    Key key, 
    @required this.img, 
    @required this.title, 
    @required this.description, 
    @required this.brief, 
    @required this.backgroundImg,
    @required this.difficulty
    }) 
      : super(key: key);

   @override
  _SlideItemState createState() => _SlideItemState();


}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 6.0),
      child: FlatButton(
        padding: EdgeInsets.all(0),
          onPressed: (){
            print("${this.widget.title}" + "\n" +
            "${this.widget.brief}" + "\n" +
            "${this.widget.img}" + "\n" +
            "${this.widget.backgroundImg}");
            Navigator.of(context).push(
                      //This creates the route to change pages
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return Project_Details(
                            img: "${this.widget.img}",
                            backgroundImg: "${this.widget.backgroundImg}",
                            description: "${this.widget.description}",
                            difficulty: "${this.widget.difficulty}",
                            title: "${this.widget.title}"
                          );
                        }
                      ),
                    );
          },
                  
          child: Container(
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width/1.2,
          child: Card(
            color: Colors.grey[700],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            elevation: 3.0,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      height: MediaQuery.of(context).size.height/4.9,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        child: Image.asset(
                          "${widget.img}",
                          height:5,
                          width:5,
                        ),
                      ),
                    ),
                  Positioned(
                      top: 6.0,
                      right: 6.0,
                      child: Card(
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.grey[400],
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Constants.ratingBG,
                                size: 25,
                              ),

                              Text(
                                " ${widget.difficulty} ",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 7.0),
                
                Padding(
                  padding: EdgeInsets.only(left: 15.0,top: 30.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "${widget.title}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                SizedBox(height: 7.0),

                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "${widget.brief}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
