import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(123, 123, 123, 1),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 464,
                width: 360,
                child: Image.asset("assets/img.png",fit:BoxFit.cover,),
              ),
            ],
          ),
          Container(
            height: 88,
            width: 247,
            child: Text("Enjoy your life with Plants",style: GoogleFonts.poppins(fontSize: 34.22,fontWeight: FontWeight.w400),)
          ),
          const SizedBox(
            height: 20,
          ),
         GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
          },
           child: Container(
            height: 50,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors:[
                  Color.fromRGBO(62, 102, 24, 1),
                  Color.fromRGBO(124, 180, 70, 1)
                ] )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Get Started >",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)
              ],  
              ),
           ),
         )
        ],
      ),
    );
  }
}