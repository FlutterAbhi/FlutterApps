import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'apppage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/img.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text("Dancing Between the Shadows of Rythm",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Gallery()));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize:const Size(261, 47),
                        backgroundColor: const Color.fromRGBO(255, 46, 0, 1),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.inter(
                            fontSize: 20, fontWeight: FontWeight.w600,color: Colors.black),
                      )),
                      const SizedBox(
                        height: 15,
                      ),
                      OutlinedButton(
                        onPressed: (){},
                        style: OutlinedButton.styleFrom(
                          side:const BorderSide(color: Colors.red),
                          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        child:Text("Continue With Email",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.red),),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "by continuing you agree to terms of services and Privacy policy",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:const Color.fromRGBO(203, 200, 200, 1)
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
