import 'package:flutter/material.dart';

class Grooming extends StatefulWidget {
  const Grooming({super.key});
  @override
  State<StatefulWidget> createState() => _GroomingState();
}

class _GroomingState extends State<Grooming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new_sharp,weight: 500,)),
                      const Spacer(),
                      const Text(
                        "Grooming",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "60% OFF",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "On hair & spa treatment",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          height: 120,
                          width: 130,
                          child: Image.asset("assets/grooming/img1.png"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.orange, width: 2.0),
                            borderRadius: BorderRadius.circular(12)),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.orange,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Our Services",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: 3 / 2,
                    ),
                    itemBuilder: (context, index) {
                      return InfoCards(
                        imgurl: _imageTitle(index),
                        title: _getServiceTitle(index),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

String _imageTitle(int index) {
  switch (index) {
    case 0:
      return "assets/grooming/img2.png";
    case 1:
      return "assets/grooming/img3.png";
    case 2:
      return "assets/grooming/img4.png";
    case 3:
      return "assets/grooming/img5.png";
    case 4:
      return "assets/grooming/img6.png";
    case 5:
      return "assets/grooming/img7.png";
    default:
      return "";
  }
}

String _getServiceTitle(int index) {
  switch (index) {
    case 0:
      return 'Bathing & Drying';
    case 1:
      return 'Hair Trimming';
    case 2:
      return 'Nail Trimming';
    case 3:
      return 'Ear Cleaning';
    case 4:
      return 'Teeth Brushing';
    case 5:
      return 'Full Grooming';
    default:
      return '';
  }
}

class InfoCards extends StatelessWidget {
  final String imgurl;
  final String title;

  const InfoCards({super.key, required this.imgurl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset(
                imgurl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

