
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailspage.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 228, 225, 225),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hey Dravid",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:const Color.fromRGBO(101, 101, 101, 1)),),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/img2.jpg"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("Let’s find your best\n residence",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500,color:const Color.fromRGBO(0, 0, 0, 1)),)),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search your favourite paradise",
                  prefixIcon: const Icon(Icons.search_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Most popular",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),),
                  TextButton(
                    onPressed: (){},
                    child: Text("See All",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: const Color.fromRGBO(32, 169, 247, 1))),
                  )
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HouseCard(
                    image: "assets/img3.jpg",
                    name: "Night Hill Villa",
                    location: "London,Night Hill",
                    rating: "4.9",
                    rent: "5900"
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  HouseCard(
                    image: "assets/img4.jpg",
                    name: "Night Villa",
                    location: "London,New Park",
                    rating: "4.7",
                    rent: "4900"
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nearby your location",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),),
                  TextButton(
                    onPressed: (){},
                    child:Text("More",style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w600,color:const Color.fromRGBO(32, 169, 247, 1)),))
                ],
              ),
            ),
            const NearByHouseCard(
              image: "img5.jpg",
              name: "Jumeriah Golf Estates Villa",
              location: "London,Area Plam Jumeriah",
              details: "4 Bedrooms , 5 Bathrooms",
              rent: "4500",
            ),
          ]
        ),
      ),
    );
  }
}

//House Cards
class HouseCard extends StatelessWidget{
  final String image;
  final String name;
  final String location;
  final String rent;
  final String rating;

  const HouseCard({super.key,required this.image,required this.name,required this.location,required this.rating,required this.rent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Details()));
        },
        child: Container(
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(image,height: 220,width: double.infinity,fit: BoxFit.cover,),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child:Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star,color: Colors.yellow,size: 12),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            rating.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Text(name,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),)
              ),
              // const SizedBox(
              //   height: 8,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Text(location,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(72, 72, 72, 1)),)),
              // const SizedBox(
              //   height: 8,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Text("$rent /Month",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color.fromRGBO(32, 169, 247, 1)),))
            ],
          ),
        ),
      ),
    );
  }
}


//NearBy HouseCards

class NearByHouseCard extends StatelessWidget{
  final String image;
  final String name;
  final String location;
  final String details;
  final String rent;

  const NearByHouseCard({super.key,required this.image,required this.name,required this.location,required this.details,required this.rent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child:Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image,height: 90,width: 90,fit: BoxFit.cover),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(location,style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w600,color:const Color.fromRGBO(90, 90, 90, 1)),),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(details,style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.w600,color:const Color.fromRGBO(90, 90, 90, 1)),),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  //   children: [
                  //     Spacer(),
                  //     Text("$rent /Month",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blue),
                  //   )
                  //   ],
                  // )
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //  Spacer(),
                  Text("$rent /Month",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blue),),
              ],
            )
          ],
        ) ,
      ),
    );
  }
}