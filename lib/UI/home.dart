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
    const HomeScreenInternal(),
    const Categories(),
    const Favourites(),
    const Profile(),
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
        elevation: 0,
        toolbarHeight: 120,
        title: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.menu_rounded,
                    color: ColorConstants.secondaryAppColor,
                    size: 31,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 95),
                  child: Icon(Icons.location_pin, color: Colors.black),
                ),
                const Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Current Location',
                        style: TextStyle(color: Colors.black),
                      )),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Icon(Icons.circle_notifications_sharp,
                      color: ColorConstants.secondaryAppColor, size: 31),
                ),
              ],
            ),
   
                const TextField(
                  
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                         BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30))                    ),
                      filled: true,
                      fillColor: Color.fromARGB(73, 39, 194, 0),
                      hintText: 'Search Your Product',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic)),
                ),
             
          ],
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,

        //  title: Center(
        //      child: Column(
        //        children: const [
        //          TextField(
        //            style: TextStyle(height: 0.2,),
        //            decoration: InputDecoration(
        //             contentPadding: EdgeInsets.symmetric(vertical: 1.0),
        //                border: OutlineInputBorder(
        //                  borderSide: BorderSide(
        //              width: 0,

        //              style: BorderStyle.none,
        //          ),
        //                ),
        //                filled: true,
        //                fillColor: Color.fromARGB(73, 39, 194, 0),
        //                hintText: 'Search Your Product',
        //                prefixIcon: Icon(Icons.search),
        //                suffixIcon: Icon(Icons.mic)),
        //          ),
        //        ],
        //      ),
        //  ),
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
