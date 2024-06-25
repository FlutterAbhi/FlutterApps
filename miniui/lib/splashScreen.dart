
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: Container(
                height: 200,
                width: 300,
                child: Image.asset("img1.png"))),
            const SizedBox(
              height: 8,
            ),
            Text("PetGaurdian",style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.white),),
            const SizedBox(
              height: 10,
            ),
            Text("Your Pets' Lifelong Protector",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),

            const SizedBox(
              height: 15,
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(245, 146, 69, 1)
              ),    
              child: const Text("Start",style: TextStyle(backgroundColor: Color.fromRGBO(245, 146, 69, 1),fontSize: 16,fontWeight: FontWeight.w600),))
          ],
        ),
      )
    );
  }
}