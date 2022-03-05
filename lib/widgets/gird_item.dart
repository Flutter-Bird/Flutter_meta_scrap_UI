import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Grid_item extends StatelessWidget {

  final String image;
  final String title;

  const Grid_item({Key? key,required this.image,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 130,
      height: 110,
      decoration: BoxDecoration(
            color:const Color.fromARGB(221, 243, 243, 243),
            border: Border.all(color:const Color.fromARGB(255, 119, 113, 113), width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8),
            )
        ),
        child: Column(children: [
          SizedBox( width: 50, height: 50, child: Image.asset(image,)),
          RichText(textAlign: TextAlign.center,
      text: TextSpan(

          text: title,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black54,

          ),
         
          )
          
    ) )
        ]),
      
      
    );
  }
}