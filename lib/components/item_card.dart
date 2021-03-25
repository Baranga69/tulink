import 'package:flutter/material.dart';
import 'package:tulink/components/choose_supplier.dart';

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ChooseSupplier();
          }));
        },
        splashColor: Colors.purple.withAlpha(70),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/banquet.png',
              width: 300,
              height: 100,
            ),
          ),
        ),
      ),
    ));
  }
}
