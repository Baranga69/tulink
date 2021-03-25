import 'package:flutter/material.dart';
import 'package:tulink/components/icon_bar.dart';
import 'package:tulink/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   //this gives us the total height and width of our screen

    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME TO 2LINK',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            ItemCard(),
            SizedBox(height: size.height * 0.10),
            NavBar(),
          ],
        ),
      ),
    );
  }
}
