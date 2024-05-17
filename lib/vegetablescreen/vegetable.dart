import 'package:delivery_app/color_screen.dart';
import 'package:delivery_app/item/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegeTableItem extends StatefulWidget {
  const VegeTableItem({super.key});

  @override
  State<VegeTableItem> createState() => _VegeTableItemState();
}

class _VegeTableItemState extends State<VegeTableItem> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset('images/3Vegetables.svg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios,
                            textDirection: TextDirection.ltr)),
                    const SizedBox(
                      height: 10,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text(
                        'Catogories',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: AppColurs.splashBgLogo,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor:
                              AppColurs.splashColorwhite.withOpacity(0.02),
                          filled: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                              color:
                                  AppColurs.splashColorwhite.withOpacity(0.2),
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
                    ),
                  ],
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Item_ScreenB()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'images/sweet.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Boston Lettuce',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      '1.10€ / piece',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 35),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 60,
                                          // child: Icon(Icons.star, color: Colors.yellow,),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      AppColurs.borderColor)),
                                          child: const Icon(
                                            Icons.favorite_border,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                            height: 35,
                                            width: 60,
                                            // color: Colors.green,
                                            // child: Icon(Icons.star, color: Colors.yellow,),
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    // width: 1,
                                                    color:
                                                        AppColurs.borderColor)),
                                            child: const Icon(
                                              Icons.shopping_cart,
                                              color: AppColurs.splashColorwhite,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Item_ScreenB()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/1a.png'),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Boston Lettuce',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      '1.10€ /kg',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 35),
                                    Row(
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 60,
                                          // child: Icon(Icons.star, color: Colors.yellow,),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      AppColurs.borderColor)),
                                          child: const Icon(
                                            Icons.favorite_border,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                            height: 35,
                                            width: 60,
                                            // color: Colors.green,
                                            // child: Icon(Icons.star, color: Colors.yellow,),
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    // width: 1,
                                                    color:
                                                        AppColurs.borderColor)),
                                            child: const Icon(
                                              Icons.shopping_cart,
                                              color: AppColurs.splashColorwhite,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Item_ScreenB()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/2a.png'),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Purple Cauliflower',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      '1.85€ /kg',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 35),
                                    Row(
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 60,
                                          // child: Icon(Icons.star, color: Colors.yellow,),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      AppColurs.borderColor)),
                                          child: const Icon(
                                            Icons.favorite_border,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                            height: 35,
                                            width: 60,
                                            // color: Colors.green,
                                            // child: Icon(Icons.star, color: Colors.yellow,),
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    // width: 1,
                                                    color:
                                                        AppColurs.borderColor)),
                                            child: const Icon(
                                              Icons.shopping_cart,
                                              color: AppColurs.splashColorwhite,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/3a.png'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Savoy Cabbage',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    '1.10€ / piece',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 35),
                                  Row(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 60,
                                        // child: Icon(Icons.star, color: Colors.yellow,),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                width: 1,
                                                color: AppColurs.borderColor)),
                                        child: const Icon(
                                          Icons.favorite_border,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                          height: 35,
                                          width: 60,
                                          // color: Colors.green,
                                          // child: Icon(Icons.star, color: Colors.yellow,),
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  // width: 1,
                                                  color:
                                                      AppColurs.borderColor)),
                                          child: const Icon(
                                            Icons.shopping_cart,
                                            color: AppColurs.splashColorwhite,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
