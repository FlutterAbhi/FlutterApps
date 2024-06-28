import 'dart:async';
import 'loginscreen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State{

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          color: const Color.fromRGBO(245, 146, 69, 1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("assets/paw1.png"),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Text("PetGuardian",style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.white),),
                const SizedBox(
                  height: 20,
                ),
                Text("“Your Pets' Lifelong Protector“",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),)
              ]),
          ),
        ) 
      )
    );
  }
}