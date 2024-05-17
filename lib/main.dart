import 'package:delivery_app/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'Flutter App',
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,),
        // ignore: prefer_const_constructors
        home: SplashScreen(title: 'Delivery App',)
    );
  }
}


