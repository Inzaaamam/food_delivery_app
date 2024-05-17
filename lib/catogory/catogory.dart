
import 'package:flutter/material.dart';

class CatogoryScreen extends StatefulWidget {
  const CatogoryScreen({super.key});

  @override
  State<CatogoryScreen> createState() => _CatogoryScreenState();
}

class _CatogoryScreenState extends State<CatogoryScreen> {
  // ignore: unused_field
  var _selectedTab = 0;

  // ignore: unused_field
  final List _pages = [
    const Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
 
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      ),
      body:   _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
    
        ],
      ),
    );
  }
}