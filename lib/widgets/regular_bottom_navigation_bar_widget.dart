import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/cart.dart';
import 'package:restaurant_app/screens/favorites.dart';
import 'package:restaurant_app/screens/home.dart';
import 'package:restaurant_app/screens/map.dart';
import 'package:restaurant_app/screens/profile.dart';

class RegularBottomNavigationBar extends StatefulWidget {
  const RegularBottomNavigationBar({super.key, required this.onPageSelected});

  final void Function(Widget page) onPageSelected;

  @override
  State<RegularBottomNavigationBar> createState() =>
      _RegularBottomNavigationBarWidgetState();
}

class _RegularBottomNavigationBarWidgetState
    extends State<RegularBottomNavigationBar> {
  var _selectedIndex = 0;

  // List of widgets for each page view
  static const List<Widget> _pages = [
    HomeScreen(),
    MapScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  // Method to handle bottom navigation item taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onPageSelected(_pages[_selectedIndex]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.map,
          ),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
    );
  }
}
