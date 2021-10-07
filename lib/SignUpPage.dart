import 'package:flutter/material.dart';

import 'HomePage.dart';
class MyWidget extends StatefulWidget {

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Welcome",style: TextStyle(color: Colors.pink.shade200,
              fontWeight: FontWeight.bold),),
        ),

    );
  }
}



