
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget{
  const Login({super.key});
  @override
  State<StatefulWidget> createState() => _LoginState();
} 

class _LoginState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(123, 123, 123, 1),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/Group.png"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Log In",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w600),),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "  Mobile Number",
                prefixIcon: const Icon(Icons.call)
              ),
            ),
          ),
          const SizedBox(
            height: 6,
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Log In",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)
              ],  
              ),
           ),
         ),
         const SizedBox(
            height: 10,
          ),
          Container(
            height: 330,
            width: 330,
            child: Image.asset("assets/snake.png",fit: BoxFit.cover,),
          )
            ],
          )
        
      );
  }
}