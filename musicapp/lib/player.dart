
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Player extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PlaterState();
}

class _PlaterState extends State{
  int selectIndex=0;
  void _selectedItem(index){
    setState(() {
      selectIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.black,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img7.png"),fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Alone in the Abyss",style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w400,color: const Color.fromRGBO(230, 154, 21, 1)),textAlign: TextAlign.center,),
                const SizedBox(
                  height: 2,
                ),
                Text("Youlakou",style: GoogleFonts.inter(fontSize: 13,fontWeight: FontWeight.w600,color: const Color.fromRGBO(255, 255, 255, 1)),),
                // const SizedBox(
                //   height: 4,
                // ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.ios_share_outlined,color: Color.fromRGBO(230, 154, 21, 1))),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text("Dynamic Warmup |",style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,color: const Color.fromRGBO(255, 255, 255, 1)),),
              const Spacer(),
              Text("4 min",style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,color: const Color.fromRGBO(255, 255, 255, 1))),
               const SizedBox(
                width: 25,
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: LinearProgressIndicator(),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Row(
            children: [
              Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.repeat_one),color: Colors.white,iconSize: 30,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.skip_previous_sharp),color: Colors.white,iconSize: 30,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.play_circle_outline_sharp),iconSize: 60,color: Colors.white,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.skip_next_sharp),color: Colors.white,iconSize: 30,),
               const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.volume_up_rounded),color: Colors.white,iconSize: 30,),
              Spacer(),
            ],
          )
        ],
      )
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
            iconSize: 30,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            currentIndex: selectIndex,
            onTap: _selectedItem,
      items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: () {}, icon:const Icon(Icons.favorite_border)),label: "Favorite"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined)),label:"Search"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.home)),label:"Home"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),label:"Cart"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.person,)),label:"Profile"),
      ]),
   );
  }
}