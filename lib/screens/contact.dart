import 'package:flutter/material.dart';

class Contact extends StatefulWidget{
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(80, 80, 80,100),
      appBar: AppBar(
        title: new Text('Contact Me'),
        backgroundColor: Color.fromRGBO(31,31,31,100),
      ),
    );
  }
}