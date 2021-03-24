import 'package:flutter/material.dart';
import 'package:tulink/components/icon_bar.dart';
import 'package:tulink/components/item_card.dart';

void main() {
  runApp(MaterialApp());
}

class MaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavBar(), 

    );
  }
}