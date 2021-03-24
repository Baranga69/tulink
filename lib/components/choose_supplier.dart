import 'package:flutter/material.dart';
import 'package:tulink/services/supply_list.dart';

class ChooseSupplier extends StatefulWidget {
  @override
  _ChooseSupplierState createState() => _ChooseSupplierState();
}

class _ChooseSupplierState extends State<ChooseSupplier> {
  List<SupplierList> suppliers = [
    SupplierList(brand: 'Pepinos Pizza', logo: 'assets/pepinos.png', rating: '3 stars'),
    SupplierList(brand: 'KFC', logo: 'assets/kfc.png', rating: '4 stars'),
    SupplierList(brand: 'Big Square', logo: 'assets/bgsquare.png', rating: '5 stars'),
    SupplierList(brand: 'Pizza Inn', logo: 'assets/pizzainn.png', rating: '2 stars'),
    SupplierList(brand: 'Spur', logo: 'assets/spur.png', rating: '1 stars')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[200],
        title: Text('Choose a supplier'),
        centerTitle: true,
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: suppliers.length,
        itemBuilder: (context, index){
          return Padding(
            padding: 
            const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
          child: Card(
           child: ListTile(
             onTap: () {

             },
             title: Text(suppliers[index].brand),
             leading: CircleAvatar(
               backgroundImage: 
               AssetImage('assets/${suppliers[index].logo}'),
             ),
           )
         ),
            
          );
        }
      ),
    );
  }
}
