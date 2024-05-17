// ignore_for_file: camel_case_types

import 'package:delivery_app/color_screen.dart';
import 'package:flutter/material.dart';

class Item_ScreenB extends StatefulWidget {
  const Item_ScreenB({super.key});

  @override
  State<Item_ScreenB> createState() => _Item_ScreenBState();
}

class _Item_ScreenBState extends State<Item_ScreenB> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: size.height,
                color: Colors.green, // Adjust background color as needed
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Image.asset(
                  'images/1a.png',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: size.height * 0.7,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Top left corner
                          topRight: Radius.circular(20.0),
                          // Top right corner)
                        ),
                        color: AppColurs.splashColorwhite
                        // height: 400,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Boston Lettuce',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                '1.5 € / piece',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                '1.5 € / piece',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                'Spain',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: AppColurs.splasTextColor),
                              ),
                              const SizedBox(
                                height: 56,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 56,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: AppColurs.splashColorwhite),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(Icons.favorite_border),
                                  ),
                                  // SizedBox(width: 21,),
                                  Container(
                                      height: 56,
                                      width: 230,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.shopping_cart,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'ADD TO CART',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          )
                                        ],
                                      )),
                                ],
                              )
                            ]),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
