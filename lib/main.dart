import 'package:flutter/material.dart';
import 'package:udemy_course_i_am_rich/screens/Projects_no_back.dart';
import 'package:udemy_course_i_am_rich/screens/home.dart';
import 'package:udemy_course_i_am_rich/screens/about_me.dart';
import 'package:udemy_course_i_am_rich/screens/contact.dart';
import 'package:flutter/cupertino.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Jason Caughers - Portfolio App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

@override
Widget build(BuildContext context) {
  Widget child;
  switch (_index) {
    case 0:
      child = HomePage(title: 'Home',);
      break;
    case 1:
      child = Projects_no_back();
      break;
    case 2:
      child = AboutMe();
      break;
    case 3:
      child = Contact();
      break;
  }

  return Scaffold(
    body: SizedBox.expand(child: child,),
    backgroundColor: Color.fromRGBO(80, 80, 80,100),
    bottomNavigationBar: BottomNavigationBar(
      onTap: (newIndex) => setState(() => _index = newIndex),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(31,31,31,100),
      currentIndex: _index,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,size: 30,),title: Text("Home",style: TextStyle(color: Colors.white)),),
        BottomNavigationBarItem(icon: Icon(Icons.folder,color:Colors.white,), title: Text("Projects",style: TextStyle(color: Colors.white),)),
        BottomNavigationBarItem(icon: Icon(Icons.info,color:Colors.white,), title: Text("About Me",style: TextStyle(color: Colors.white))),
        BottomNavigationBarItem(icon: Icon(Icons.contacts,color:Colors.white,), title: Text("Contact",style: TextStyle(color: Colors.white))),
      ],
    ),
  );
}
  
}
