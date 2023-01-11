// ignore_for_file: prefer_final_fields, unused_field, implementation_imports

import 'package:expense_tracker/screens/home_screen.dart';
import 'package:expense_tracker/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _currentIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    Container(),
    Container(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Expense Tracker'),
      //   elevation: 0,
      // ),
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.tray_arrow_up,
            ),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chart_bar_fill,
            ),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.add,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              // CupertinoIcons.gear_solid,
              CupertinoIcons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        elevation: 0,
      ),
      body: _pages[_currentIndex],
    );
  }
}
