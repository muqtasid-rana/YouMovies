import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:you_movies/utils/constants/colors.dart';
import 'package:you_movies/views/home_screen/home_screen.dart';
import 'package:you_movies/views/search_screen/search_screen.dart';
import 'package:you_movies/views/settings_screen/settings_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 1;

  final List<Widget> _screens = const [
    SearchScreen(),
    HomeScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: bgColor,
        color: kRed,
        buttonBackgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _screens[_selectedIndex],
    );
  }
}
