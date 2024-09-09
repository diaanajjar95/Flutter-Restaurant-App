import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/cart.dart';
import 'package:restaurant_app/screens/favorites.dart';
import 'package:restaurant_app/screens/home.dart';
import 'package:restaurant_app/screens/map.dart';
import 'package:restaurant_app/screens/profile.dart';
import 'package:restaurant_app/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:restaurant_app/widgets/home_title_widget.dart';
import 'package:restaurant_app/widgets/main_drawer.dart';

class MainTabsScreen extends StatefulWidget {
  const MainTabsScreen({super.key});

  @override
  State<MainTabsScreen> createState() => _MainTabsScreenState();
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  // Widget _activePage = HomeScreen();

  var _selectedIndex = 0;

  // List of widgets for each page view
  static const List<Widget> _pages = [
    HomeScreen(),
    MapScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  // Method to handle bottom navigation item taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HomeTitleWidget(),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
            ),
          ),
        ],
      ),
      drawer: MainDrawer(
        onSelectScreen: (identifier) {
          // Handle Navigation Here.
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$identifier selected.'),
            ),
          );
        },
      ),
      body: _pages[_selectedIndex],
      // regular Bottom Navigation Bar Implementation. (METHOD NUMBER 1)
      // bottomNavigationBar: RegularBottomNavigationBar(
      //   onPageSelected: (page) {
      //     setState(() {
      //       _activePage = page;
      //     });
      //   },
      // ),

      // Custom Bottom Navigation Bar Implementation. (METHOD NUMBER 2)
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffff4e02),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        },
        child: const Icon(
          color: Colors.white,
          Icons.shopping_bag,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) => _onItemTapped(index),
      ),
    );
  }
}
