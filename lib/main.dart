import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home.dart';
import 'catagory.dart';
import 'aboutPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        '/home':(context)=>const HomePage(),
        '/catagory':(context)=>const CategoryPage(),
        '/about':(context)=>const AboutPage(),

      },
    debugShowCheckedModeBanner: false,
      title: 'News App',
      home: const SplashScreen(),
    );
  }
}




