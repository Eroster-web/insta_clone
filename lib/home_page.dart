import 'package:flutter/material.dart';
import 'package:insta_clone/pages/add.dart';
import 'package:insta_clone/pages/home.dart';
import 'package:insta_clone/pages/profile.dart';
import 'package:insta_clone/pages/search.dart';
import 'package:insta_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Navigate  around the bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //diffrrent pages to navigate

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserAdd(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'market'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp), label: 'profile'),
        ],
      ),
    );
  }
}
