import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});
  @override
  State<StatefulWidget> createState() => _DetailsState();
}

class _DetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 225, 225),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                Text(
                  "Details",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                "assets/img3.jpg",
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Night Hill Villa",
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "5900",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                ),
                Text(
                  "/Month",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "London,Night Hill",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(72, 72, 72, 1)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 160,
                  width: 140,
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(22)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.bed),
                      Text("Bedrooms",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1))),
                      Text(
                        "5",
                        style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
          
                //Bathrooms
                Container(
                  height: 160,
                  width: 140,
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(22)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.bathtub_rounded),
                      Text("Bathrooms",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1))),
                      Text(
                        "6",
                        style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
          
                //Square ft
                Container(
                  height: 160,
                  width: 140,
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(22)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.zoom_out_map_rounded),
                      Text("Square ft",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1))),
                      Text(
                        "7,000 sq ft",
                        style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ),
        Container(
          padding: EdgeInsets.all(20),
          height: 150,
          child: SingleChildScrollView(
                    child: Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet ",
                      style: GoogleFonts.poppins(fontSize: 15,fontWeight:FontWeight.w400),
                    ),
                  ),
        ),
        Container(
          height: 80,
          width: double.infinity,
         // padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color:Colors.white,
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(220, 55),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
              child: Text("Rent Now",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w400),)
            ),
          ),
        )
        ]
          )
        ),
      );
  }
}
