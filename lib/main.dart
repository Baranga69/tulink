import 'package:flutter/material.dart';
import 'package:tulink/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2LINK',
      home: Body(),
      
    );
  }
}
