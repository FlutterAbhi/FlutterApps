import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petapp/veterinaryscreen.dart';
import 'notificationsscreen.dart';
import 'grooming.dart';
import 'shopscreen.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({super.key});
  @override
  State<StatefulWidget> createState() => _DashBoardState();
}

class _DashBoardState extends State {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 238),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset("assets/image.png"),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Column(
                    children: [
                      const Text(
                        "Hello , Sarah",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "     Good Morning!",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(194, 195, 204, 1)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.notifications_none,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationScreen(),
                          ));
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     offset: Offset(10, 10),
                  //     blurRadius: 20,
                  //   ),
                  // ]
                ),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        Text(
                          "In Love With Pets?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "          Get all what you need for them",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(245, 146, 69, 1)),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("assets/pf.png")),
                  ],
                ),
              ),
              SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16, color: Colors.orange),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/img1.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Veterinary"),
                        ],
                      ),
                    ),
                    //2nd
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Grooming()));
                      },
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/img2.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Grooming"),
                        ],
                      ),
                    ),
                    //3rd
                    GestureDetector(
                      onTap: () {},
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/img3.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Pet Store"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/img4.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Training"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Event",
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Find and Join in Special Events\n For Your Pets!",
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(245, 146, 69, 1),
                          ),
                          child: Text("See More"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/eve1.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Community",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Connect and share with\n communities! ",
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(245, 146, 69, 1),
                          ),
                          child: Text("See More"),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Image.asset(
                          "assets/eve2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Color.fromRGBO(126, 128, 143, 1),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Veterinary()),
                  );
                },
                icon: const Icon(Icons.favorite,
                    color: Color.fromRGBO(126, 128, 143, 1))),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const PetShop()));
                },
                icon: const Icon(Icons.shopping_cart,
                    color: Color.fromRGBO(126, 128, 143, 1))),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.history,
                    color: Color.fromRGBO(126, 128, 143, 1))),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person,
                    color: Color.fromRGBO(126, 128, 143, 1))),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}

// class CategoryItem extends StatelessWidget {
//   final String label;
//   final String imgurl;
//   const CategoryItem({super.key, required this.label, required this.imgurl});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Column(
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: AssetImage(imgurl),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(label),
//         ],
//       ),
//     );
//   }
//}
