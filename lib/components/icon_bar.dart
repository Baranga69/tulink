import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
 
 int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: HOME',
      style: optionStyle,
    ),
    Text(
      'Index 1: DISCOVER',
      style: optionStyle,
    ),
    Text(
      'Index 2: FAVORITES',
      style: optionStyle,
    ),
     Text(
      'Index 3: CREATE',
      style: optionStyle,
    ),
     Text(
      'Index 4: PROFILE',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'DISCOVER',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'FAVORITES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'CREATE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


