import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Basic Send Message",
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        splashColor: Colors.yellowAccent,
        brightness: Brightness.light,
      ),
      home: new HomePage(),
    );
  }
}
