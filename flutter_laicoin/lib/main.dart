import 'package:flutter/material.dart';
import './views/default_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DCoin++',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: DefaultPage(),
    );
  }
}
