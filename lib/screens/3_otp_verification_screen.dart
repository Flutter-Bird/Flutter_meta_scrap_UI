import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPverificationScreen extends StatefulWidget {
  const OTPverificationScreen({ Key? key }) : super(key: key);

  @override
  _OTPverificationScreenState createState() => _OTPverificationScreenState();
}

class _OTPverificationScreenState extends State<OTPverificationScreen> {


     Widget _title() {
     return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(

          text: "Enter verification code",
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
),)      
    ));
  }

    String text = '';

    void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

    Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
        child: Center(child: Text(text[position],style:const TextStyle(color: Colors.black),),),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
      );
    }
  }


  @override
  
  Widget build(BuildContext context) {

        final height = MediaQuery.of(context).size.height;

    return Scaffold(
   
    appBar: AppBar(
        backgroundColor: const Color(0xFF4270b7),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ), 
      body:SizedBox(

        height: height,

        child: Stack(children:[
          Container(
          
            padding: const EdgeInsets.symmetric(horizontal: 20 ),

            child: Column(
              
              children: [

                SizedBox(height: height*0.08),

                _title(),

                SizedBox(height: height*0.08),

                Row(

                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   
                         children: <Widget>[
                                      otpNumberWidget(0),
                                      otpNumberWidget(1),
                                      otpNumberWidget(2),
                                      otpNumberWidget(3),
                                      otpNumberWidget(4),
                                      otpNumberWidget(5),
                                    ],
                )           
            ]),
          )
        ]),

      ) ,
    );
  }
}