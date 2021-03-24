import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
   const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/banquet.png', width: 300, height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

