import 'package:flutter/material.dart';

class HomeScreenInternal extends StatefulWidget {
  const HomeScreenInternal({super.key});

  @override
  State<HomeScreenInternal> createState() => _HomeScreenInternalState();
}

class _HomeScreenInternalState extends State<HomeScreenInternal> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: Text(
      'Home here',
      style: optionStyle,
    ),
    ));
    
  }
}