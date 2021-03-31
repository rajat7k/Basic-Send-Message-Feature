import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Basic Send Messsage Feature",
          style: new TextStyle(
            color: Colors.limeAccent,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: new ChatScreen(),
    );
  }
}
