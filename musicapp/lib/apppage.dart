import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'player.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});
  @override
  State<StatefulWidget> createState() => _GalleryState();
}

class _GalleryState extends State {
   int selectIndex=4;
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
            child: Column(children: [
           Container(
              width: double.infinity,
              height: 300,
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text("A.L.O.N.E",style: GoogleFonts.inter(fontSize: 36,fontWeight: FontWeight.w600,color: Colors.white),)
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 46, 0, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                      onPressed: () {},
                      child: const Text('Subscribe',),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionHeader(title: 'Discography', seeAll: () {}),
                  const SizedBox(height: 10),
                  AlbumGrid(),
                  const SizedBox(height: 10),
                  SectionHeader(title: 'Popular singles', seeAll: () {}),
                  const SizedBox(height: 10),
                  SingleList(),
                ],
              ),
            ),
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
            items:[
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Player()));
              }, icon: const Icon(Icons.favorite_border)),label:"Favorite"),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined)),label:"Search"),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.home)),label:"Home"),
              BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),label:"Cart"),
               BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.person,)),label:"Profile"),
            ]  
          ),

        );
  
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback seeAll;

  const SectionHeader({super.key, required this.title, required this.seeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(255, 46, 0, 1)),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "See All",
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(248, 162, 69, 1)),
            ))
      ],
    );
  }
}

class AlbumGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics(),
      children: const [
        AlbumItem(
          image: "img2.jpg",
          title: "Dead inside",
          year: "2020",
        ),
        AlbumItem(
          image: "img3.jpg",
          title: "Alone",
          year: "2023",
        ),
        AlbumItem(
          image: "img4.jpg",
          title: "Heartless",
          year: "2023",
        ),
      ],
    );
  }
}

class AlbumItem extends StatelessWidget {
  final String image;
  final String title;
  final String year;

  const AlbumItem(
      {required this.image, required this.title, required this.year});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.fill,
        ),
        // const SizedBox(
        //   height: 15,
        // ),
        Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        // const SizedBox(
        //   height: 5,
        // ),
        Text(
          year,
          style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(132, 125, 125, 1)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class SingleList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SingleItem(
          image: "img5.jpg",
          title: "We Are Chaos",
          year: "2020",
          artist: "Easy Living",
        ),
        SingleItem(
          image: "img6.jpg",
          title: "Smile",
          year: "2023",
          artist: "Berrechid",
        ),
      ],
    );
  }
}

class SingleItem extends StatelessWidget{
  final String image;
  final String title;
  final String year;
  final String artist;

  const SingleItem({required this.image,required this.title,required this.year,required this.artist});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image,fit: BoxFit.cover,),
      title: Text(title,style: const TextStyle(color: Colors.grey),),
      subtitle: Text("$year * $artist",style: const TextStyle(color: Colors.grey),),
      trailing: const Icon(Icons.more_vert_sharp,color: Colors.grey,),
    );
  }
}