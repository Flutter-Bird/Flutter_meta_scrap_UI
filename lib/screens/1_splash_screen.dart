import 'dart:async';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {

  
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
  Timer(const Duration(seconds: 3),(() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SplashScreen()))
   ) );
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