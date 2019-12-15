import 'package:flutter/material.dart';

class circularSlideItem extends StatefulWidget {

  final String img;
  final String title;
  final double width;
  final double height;


  circularSlideItem({
    Key key,
    @required this.img,
    @required this.title, this.width, this.height

  }) 
    : super(key: key);

  @override
  _circularSlideItemState createState() => _circularSlideItemState();

}

class _circularSlideItemState extends State<circularSlideItem>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage:ExactAssetImage(
            "${widget.img}",
          ),
          minRadius:30,
          maxRadius:50,
          backgroundColor: Colors.transparent,
          ),
          Text(
            "${widget.title}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          )
        ],
      ),
    );

  }
  

}