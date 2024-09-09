import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/main_tabs.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterRestaurantApp',
      theme: ThemeData().copyWith(
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        scaffoldBackgroundColor:
            const Color(0xfff9f9f9), // Set the background color
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor:
              const Color(0xfff9f9f9), // Set the AppBar background color
          foregroundColor: Colors.black, // Text and icon color
          // elevation: 4.0, // Shadow depth
          // Use `elevation` to adjust the shadow under the AppBar
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffff4e02),
        ),
      ),
      home: const MainTabsScreen(),
    );
  }
}
