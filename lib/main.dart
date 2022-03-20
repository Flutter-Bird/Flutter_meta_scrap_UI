
import 'package:flutter/material.dart';
import 'package:meta_scrap/screens/1_splash_screen.dart';
import 'package:meta_scrap/screens/4_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor:const Color(0xFF4270b7),
        
      ),
      
      home:const SplashScreen(),


    );
  }
}

