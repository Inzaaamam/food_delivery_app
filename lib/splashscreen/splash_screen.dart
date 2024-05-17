
import 'package:delivery_app/catogory/product.dart';
import 'package:delivery_app/color_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required String title});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
  
    
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        // ignore: sized_box_for_whitespace
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
        
            children: [
              // Background container
              Container(
                height: size.height,

                color:
                    AppColurs.splashScreen, // Adjust background color as needed
              ),
              // Positioned elliptical images
              Positioned(
                top: 0,
                right: -20,
                child: Image.asset('images/Ellipse8.png'),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset('images/Ellipse10.png'),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset('images/Ellipse12.png'),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(25, 63, 0, 0),
                child: Container(
                  width: 63,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.5),
                    color: AppColurs.splashLogo,
                  ),
                  child: SvgPicture.asset(
                    'images/D.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: size.height * 0.65,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0), // Top left corner
                        topRight: Radius.circular(20.0),
                        // Top right corner)
                      ),
                      color: AppColurs.splashColorwhite
                      // height: 400,
                      ),
                  child: SingleChildScrollView(
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 104,
                            width: 104,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(52),
                                color: AppColurs.splashBgLogo),
                            child: SvgPicture.asset(
                              'images/Box.svg',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //ignore: avoid_unnecessary_containers
                          const Text(
                            'Non-Contact Deliveries',
                            style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                backgroundColor: AppColurs.splashColorwhite),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(21, 0, 21, 0),
                            child: Text(
                              'When placing an order select the option Contactless delivery and the courier will leave your order at the door',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColurs.splasTextColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductItem()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green),
                                  child: const Center(
                                      child: Text(
                                    'ORDER NOW',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ))),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'DISMISS',
                                style: TextStyle(
                                    color: AppColurs.splasTextColor,
                                    fontSize: 16),
                              )),
                             const SizedBox(height: 20,)
                        ]),
                  ), 
                  
                ),
              )
            ],
          ),
        ),
      ),
    
    );
  }
}
