
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petapp/doctordetails.dart';

class Veterinary extends StatefulWidget{
  const Veterinary({super.key});
  @override
  State<StatefulWidget> createState() => _VeterinaryState();
}

class _VeterinaryState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.location_on,color: Colors.orange,),
                Text("London, UK",style: TextStyle(color: Color.fromRGBO(194, 195, 204, 1)),)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:const Color.fromRGBO(245, 146, 69, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Lets Find Specialist\n Doctor for Your Pet!",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        child: Image.asset("assets/veterinary/img1.png"),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  suffixIcon: Icon(Icons.search,color: Colors.orange,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Our Services",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),
                Spacer(),
                TextButton(
                  onPressed: (){},
                  child: Text("See All",style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey),)
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                          child: Image.asset("assets/veterinary/img2.png"),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("Operations",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.orange),)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                          child: Image.asset("assets/veterinary/img3.png"),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("Behaviorals",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.orange),)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                          child: Image.asset("assets/veterinary/img4.png"),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("Dentistry",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.orange),)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                          child: Image.asset("assets/veterinary/img5.png"),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("Vaccinations",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.orange),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Text("Best Specialists Nearby",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const doctorDetails()));
              },
              child: Container(         
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Image.asset("assets/veterinary/dr1.png"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text("Dr. Anna Johanson",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("Veterinary Behavioral",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                        const SizedBox(
                          height: 4,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.star_border,color: Colors.orange,),
                            Text("4.8"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.location_on,color: Colors.orange),
                            Text("1 km"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //2nd doctor container
            GestureDetector(
              onTap: () {},
              child: Container(         
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Image.asset("assets/veterinary/dr2.png"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text("Dr. Vernon Chwe",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("Veterinary Surgery",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                        const SizedBox(
                          height: 4,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.star_border,color: Colors.orange),
                            Text("4.9"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.location_on,color: Colors.orange),
                            Text("1.5 km"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}