import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(80, 80, 80, 100),
      body: ListView(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                      )),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage: ExactAssetImage("assets/me.jpg"),
                          minRadius: 30,
                          maxRadius: 50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                      ),
                      Text(
                        "Contact Me",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w200),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Center(
                  child: new Text(
                    "Follow me",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w200),
                        textAlign: TextAlign.center,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 16.0),
                      ),
                      CircleAvatar(
                        backgroundImage: ExactAssetImage(
                          'assets/facebook.png',
                        ),
                        minRadius: 30,
                        maxRadius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 7.0),
                      ),
                      CircleAvatar(
                        backgroundImage: ExactAssetImage(
                          'assets/twitter.png',
                        ),
                        minRadius: 30,
                        maxRadius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 7.0),
                      ),
                      CircleAvatar(
                        backgroundImage: ExactAssetImage(
                          'assets/linkdin.png',
                        ),
                        minRadius: 30,
                        maxRadius: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                        padding: EdgeInsets.only(bottom: 30),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
