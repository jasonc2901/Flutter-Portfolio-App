
import 'package:flutter/material.dart';
import 'package:udemy_course_i_am_rich/screens/home.dart';

class me_summary extends StatelessWidget {
  
    final bool horizontal;

  const me_summary({Key key, this.horizontal}) : super(key: key);
 
 @override
   Widget build(BuildContext context) {
 
     final meThumbnail = new Container(
         
      padding: EdgeInsets.only(bottom: 20),
      child: new Center(
        child: CircleAvatar(
          backgroundImage:ExactAssetImage(
            'assets/me.jpg',
          ),
          minRadius:30,
          maxRadius:60,
        ),
      ),
     );

    Widget _aboutValue({String value}) {
       return new Container(
         child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Container(width: 8.0),
              new Text(value,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
            ]
          ),
        );
      }

     final aboutMeContent = new Container(
       height: 90,
        constraints: new BoxConstraints.expand(),
        child: new Column(
          children: <Widget>[
            new Container(height: 40.0),
            new Container(height: 30.0,padding: EdgeInsets.only(top: 40,bottom: 40)),
            new Text('Jason Caughers',
              style: TextStyle(
                fontFamily: 'Curve',
                fontSize: 60,
                color: Colors.white,
              ),
            ),
            
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff),
            ),
          
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                  flex: horizontal ? 1 : 0,
                  child: _aboutValue(
                    value: 'Age: 21',
                    )
                ),
           ],
         ),
       ],
       ),
    );
 
 
   final meCard = new Container(
       child: aboutMeContent,
       height: 230,
       margin: horizontal
        ? new EdgeInsets.only(left: 46.0)
        : new EdgeInsets.only(top: 72.0),
      decoration: new BoxDecoration(
        color: Colors.grey[700],
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
         new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
     ),
    );


   return new GestureDetector(
      onTap: horizontal
          ? () => Navigator.of(context).push(
           new PageRouteBuilder(
              pageBuilder: (_, __, ___) => new HomePage(title: 'Home'),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
               new FadeTransition(opacity: animation, child: child),
             ) ,
           )
          : null,
     child: new Container(
      padding: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 30),
        child: new Stack(
         children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(top: 100,bottom: 100),
            ),
            meCard,
            meThumbnail,
          ],
       ),
      )
   );
  }
}