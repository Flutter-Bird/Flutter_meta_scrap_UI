import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meta_scrap/screens/2_login_with_phone_number.dart';


class SplashScreen extends StatefulWidget {

  
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late  Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {

  super.initState();
  Timer(const Duration(seconds: 3),(() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginwithPhoneNumber()))
   ) );
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center( 
        child: Stack(
          children: [
            Image.asset("assets/images/meta_scrap.png",fit: BoxFit.cover,),
            Text("Meta Scrap",style: GoogleFonts.monoton(fontSize: 30), )
          ],
        ),
      ),
    );}
}