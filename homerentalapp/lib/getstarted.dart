
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';

class getStarted extends StatefulWidget{
  const getStarted({super.key});
  @override
  State<StatefulWidget> createState() => _getStartedState();
}

class _getStartedState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img1.png"),
                  fit: BoxFit.cover
              ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.white,
            child: Column(
              children: [
                Text("Lets find your Paradise",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),),
                const SizedBox(
                  height: 7,
                ),
                Text("Find your perfect dream space with just a few clicks",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(220 , 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                    )
                  ),
                  child: Text("Get Started",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w400),)
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}