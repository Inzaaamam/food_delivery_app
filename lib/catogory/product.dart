import 'package:delivery_app/catogory/productitem.dart';
import 'package:delivery_app/vegetablescreen/vegetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductItem extends StatefulWidget {
  ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  // ignore: unused_field
  int _selectedIndex = 0;
    // ignore: unused_field
    static const List<Widget> _widgetOptions = <Widget>[
    // Add your screens or widgets for each tab here
    Text('Contact'), // Placeholder for Contact screen
    Text('Home'),    // Placeholder for Home screen
    Text('Settings'),// Placeholder for Settings screen
  ];

  // ignore: unused_element
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  bottomNavigationBar: ProductItem(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: kToolbarHeight - 30,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          textDirection: TextDirection.ltr)),
                  // Other widgets can be added here
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Text(
                  'Catogories',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.02),
                  filled: true,
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                  ),
                  // ignore: deprecated_member_use
                  prefixIcon: SvgPicture.asset(
                    'images/search.svg',
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(
                    imageUrl: 'images/Media.png',
                    title: 'Vegetables',
                    text: '(43)',
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const VegeTableItem()));
                    },
                  ),
                  const CustomCard(
                    imageUrl: 'images/2fruit.png',
                    title: 'Fruits',
                    text: '(32)',
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 23,
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(
                    imageUrl: 'images/bread.png',
                    title: 'Breads',
                    text: '(56)',
                  ),
                  CustomCard(
                    imageUrl: 'images/sweet.png',
                    title: 'Sweets',
                    text: '(22)',
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 23,
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(
                    imageUrl: 'images/5img.png',
                    title: 'Breads',
                    text: '(20)',
                  ),
                  CustomCard(
                    imageUrl: 'images/6img.png',
                    title: 'Sweets',
                    text: '(15)',
                  ),
                ],
              ),
              //  CustomCard(imageUrl: 'images/sweet.png', title: 'Fruit', text: '32',)
            ],
          ),
        ),
      ),
     
      // bottomNavigationBar: BottomNavigationBar(
         
      //   type: BottomNavigationBarType.fixed,
      //   items:  <BottomNavigationBarItem>[
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.view_cozy, size: 25,),
      //       label:  ''
      //     ),
      //     BottomNavigationBarItem(
      //      icon: SvgPicture.asset('images/2cart-shopping-solid.svg' , height: 25,  ),
      //       label:  ''
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('images/3user-solid.svg' ,height: 25,),
      //      label:  ''
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: AppColurs.splashScreen,
      //   onTap: _onItemTapped,
      // ),
    );
  }
  // ignore: unused_label, prefer_typing_uninitialized_variables
}
