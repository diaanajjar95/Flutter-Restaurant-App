import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});

  final void Function(int index) onItemTapped;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 9.0,
      notchMargin: 8.0, // Increase the margin around the notch
      surfaceTintColor: Colors.white.withOpacity(0.1), // Adds a white tint
      shadowColor: Colors.black54, // Darker shadow
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            iconSize: 35,
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
                widget.onItemTapped(0);
              });
            },
            icon: Icon(
              Icons.home,
              color:
                  _selectedIndex == 0 ? const Color(0xffff4e02) : Colors.grey,
            ),
          ),
          IconButton(
            iconSize: 35,
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
                widget.onItemTapped(1);
              });
            },
            icon: Icon(
              Icons.map,
              color:
                  _selectedIndex == 1 ? const Color(0xffff4e02) : Colors.grey,
            ),
          ),
          IconButton(
            iconSize: 35,
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
                widget.onItemTapped(2);
              });
            },
            icon: Icon(
              Icons.favorite,
              color:
                  _selectedIndex == 2 ? const Color(0xffff4e02) : Colors.grey,
            ),
          ),
          IconButton(
            iconSize: 35,
            onPressed: () {
              setState(() {
                _selectedIndex = 3;
                widget.onItemTapped(3);
              });
            },
            icon: Icon(
              Icons.person,
              color:
                  _selectedIndex == 3 ? const Color(0xffff4e02) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
