import 'package:flutter/material.dart';
import 'package:tinybasket/UI/Screens/Categories.dart';
import 'package:tinybasket/UI/Screens/Favourites.dart';
import 'package:tinybasket/UI/Screens/HomeScreen.dart';
import 'package:tinybasket/UI/Screens/Profile.dart';

import 'color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final screens = [
    HomeScreenInternal(),
    Categories(),
    Favourites(),
    Profile(),
  ];
  // static const List<Widget> _widgetOptions = <Widget>[
  //   HomeScreen(),
  //   Categories(),
  //   Favourites(),
  //   Profile(),
  //   // Text(
  //   //   'Favs here',
  //   //   style: optionStyle,
  //   // ),
  //   // Text(
  //   //   'Profile here',
  //   //   style: optionStyle,
  //   // ),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded, color: ColorConstants.secondaryAppColor),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Container(
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(73, 39, 194, 0),
                hintText: 'Search Your Product',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic)),
            ),
          ),
        ),      
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: ColorConstants.secondaryAppColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
