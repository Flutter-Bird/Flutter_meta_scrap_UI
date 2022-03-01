import 'dart:async';
import 'dart:ffi';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:meta_scrap/screens/login_with_phone_number.dart';


class SplashScreen extends StatefulWidget {

  
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

   // Future.delayed(const Duration(seconds: 3),(() => ))))
   Future.delayed(const Duration(seconds: 3),);


    super.initState();
  
  }
  @override
  Widget build(BuildContext context) {
    
    return Container( 
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/zuhour-splash.png"),
        fit:BoxFit.cover
      ), 
    
    ),
  );}
}