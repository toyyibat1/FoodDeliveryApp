import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black54),
              title: Text("Home"),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black54),
              title: Text("Favorites"),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black54,
              ),
              title: Text("Cart"),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black45),
              title: Text(
                "Account",
              ),
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        });
  }
}
