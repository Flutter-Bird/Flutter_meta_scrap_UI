import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  
  const Heading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(

          text: "Login with Phone Number",
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black87,

          ),
         
          )
          
    ));
  }
}
