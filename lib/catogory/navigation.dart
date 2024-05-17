import 'package:delivery_app/catogory/product.dart';
import 'package:delivery_app/color_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YourScreen extends StatefulWidget {
  const YourScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _YourScreenState createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the selected screen based on the index
    // Here, you can use Navigator.push() or any navigation method you prefer
    // Example:
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductItem()));
    } else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductItem()));
    } else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductItem()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Screen Title'),
      ),
      body: Center(
        child: Text('Your Screen Content'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_cozy, size: 25),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('images/2cart-shopping-solid.svg', height: 25),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('images/3user-solid.svg', height: 25),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColurs.splasTextColor, // Change color as needed
        onTap: _onItemTapped,
      ),
    );
  }
}


