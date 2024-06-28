
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboardscreen.dart';

class Login extends StatefulWidget{
  const Login({super.key});
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Login",style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.w700,color: const Color.fromRGBO(245, 146, 69, 1)),),
              Container(
                height:250,
                width:300,
                child: Image.asset("assets/paw3.png")),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "PetGuardian@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.visibility_off,color: Colors.orange,),
                  labelText: "Password",
                  hintText: "**********",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forgot Password?",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),
                  TextButton(
                    onPressed: (){},
                    child: Text("Click here",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashBoard()));
                },
                style:ElevatedButton.styleFrom(
                  fixedSize: Size(427, 35),
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                ),
                child: Text("LOGIN",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                height: 1,
                width: 427,
                color:const Color.fromRGBO(245, 146, 69, 1),
              ),
              const SizedBox(
                height: 15,
              ),
             ElevatedButton(
                onPressed: (){},
                style:ElevatedButton.styleFrom(
                  fixedSize: Size(427, 35),
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                ),
                child: Text("LOGIN WITH EMAIL",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
              ),
              const SizedBox(
                height: 20,
              ),
             ElevatedButton(
                onPressed: (){},
                style:ElevatedButton.styleFrom(
                  fixedSize: Size(427, 35),
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                ),
                child: Text("LOGIN WITH FACEBOOK",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("By continue you agree to our \n    Terms & Privacy Policy",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
              const SizedBox(
                height: 20,
              )
            ],
          ), 
        ),
      ),
    );
  }
}