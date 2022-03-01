
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meta_scrap/page_routes/routes.dart';

class LoginwithPhoneNumber extends StatefulWidget {
  const LoginwithPhoneNumber({Key? key}) : super(key: key);

  @override
  _LoginwithPhoneNumberState createState() => _LoginwithPhoneNumberState();
}

class _LoginwithPhoneNumberState extends State<LoginwithPhoneNumber> {



   Widget _title() {
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

   
   Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
         const SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration:  InputDecoration(
                hintText: "+971",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(221, 182, 174, 174)
                    ,
                    width: 1
                  ),
                ),
                  
                  fillColor: const Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
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

        child: Stack(children: [

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child:Column(

              crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,

              children: [
               
                 _title(),
                 const SizedBox(height:50),
                 _entryField("Enter Phone Number:"),
                 const SizedBox(height: 30,),
                 // ignore: deprecated_member_use
                 RaisedButton(
                   
                 onPressed: () => Navigator.pushNamed(context, optVerificatonScreen),
                 textColor: Colors.white,
                 color:const Color(0xFF4270b7) ,
                 child: const Text("Next"),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0)
                 ),
                 )
              ],
            ) ,
          )
        ],
        ),
      ) ,
    );
  }
}
