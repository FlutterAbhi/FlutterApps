import 'package:flutter/material.dart';


class PetShop extends StatefulWidget{
  const PetShop({super.key});
  @override
  State<StatefulWidget> createState() => _PetShopState();
}

class _PetShopState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        leading:IconButton(
          onPressed:(){},
          icon:Icon(Icons.menu, color: Colors.white),
        ),
        actions:[
          IconButton(
            onPressed: (){},
             icon:const Icon(Icons.shopping_cart, color: Colors.white),
          ),      
          const SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello Sarah",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const Text(
                  "Find your lovable Pets",
                  style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search Something Here...",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon:const Icon(Icons.search, color: Colors.orange),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.orange, width: 8),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 175,
                          padding: EdgeInsets.all(7),
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            category['image']!,
                            fit: BoxFit.cover,
                            height: 150,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            category['title']!,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Service",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

final List<Map<String, String>> categories = [
  {
    'title': 'Pets',
    'image': 'assets/shop/img1.png',
  },
  {
    'title': 'Foods',
    'image': 'assets/shop/img2.png',
  },
  {
    'title': 'Healthy',
    'image': 'assets/shop/img3.png',
  },
  {
    'title': 'Toys',
    'image': 'assets/shop/img4.png',
  },
  {
    'title': 'Accessories',
    'image': 'assets/shop/img5.png',
  },
  {
    'title': 'Clothes',
    'image': 'assets/shop/img6.png',
  },
];
