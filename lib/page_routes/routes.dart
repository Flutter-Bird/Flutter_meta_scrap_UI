

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:meta_scrap/screens/login_with_phone_number.dart';
import 'package:meta_scrap/screens/opt_verification_screen.dart';
import 'package:meta_scrap/screens/splash_screen.dart';

const String homePage = "/";
const String splashScreen = "Splash_Screen";
const String loginPagewithPhoneScreen = "Login_with_phone_number";
const String optVerificatonScreen = "OPT_verificaton_screen";

Route<dynamic> controller(RouteSettings gotopage){

  switch (gotopage.name) {

    case homePage:
     return MaterialPageRoute(builder: (context)=>const LoginwithPhoneNumber());      
      
    case splashScreen:
     return MaterialPageRoute(builder: (context)=>const SplashScreen());
      
    case loginPagewithPhoneScreen:
     return MaterialPageRoute(builder: (context)=>const LoginwithPhoneNumber());

     case optVerificatonScreen:
     return MaterialPageRoute(builder: (context)=>const OPTverificationScreen());

    default:
    throw("this page route does not exits");
  }
  
} 