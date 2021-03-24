import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Title title;
  ItemCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 0.0),
      color: Colors.grey[500],
      
    );
  }
}
