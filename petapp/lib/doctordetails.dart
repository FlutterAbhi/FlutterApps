import "package:flutter/material.dart";

class doctorDetails extends StatefulWidget {
  const doctorDetails({super.key});
  @override
  State<StatefulWidget> createState() => _doctorDetailsState();
}

class _doctorDetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 35,
                width: 35,
                color: Colors.white,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.orange,
                    )),
              ),
              const Spacer(),
              const Text(
                "Veterinary",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/veterinary/dr3.png', // Add your image asset here
              height: 175,
              width: 392,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding:const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Dr. Anna Jhonason",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Veterinary Behavioral",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          infoCard(title: "Experience", value: "11 Years"),
                          infoCard(title: "  Price  ", value: "950"),
                          infoCard(title: "Location", value: "2.5 Km"),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Text(
                            "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Available Days",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.calendar_month,
                            color: Colors.orange,
                          ),
                          Text("October, 2023")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _chipDate("Fri, 6"),
                          _chipDate("Sat, 7"),
                          _chipDate("Sun, 8"),
                          _chipDate("Mon, 9"),
                          _chipDate("Tue, 10")
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Available Time",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          availableTime("9:00"),
                          const SizedBox(
                            width: 20,
                          ),
                          availableTime("15:00"),
                          const SizedBox(
                            width: 20,
                          ),
                          availableTime("19:00"),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(double.infinity,40),
                          backgroundColor:const Color.fromRGBO(252, 219, 193, 1)
                        ),
                        child:const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.map_outlined,color: Color.fromRGBO(163, 97, 46, 1),),
                            Text("See Location",style: TextStyle(color: Color.fromRGBO(163, 97, 46, 1)),)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(double.infinity,40),
                          backgroundColor: Colors.orange,
                        ),
                        child:const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Book Now",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//available time
Widget availableTime(String time){
  return Chip(
    label: Text(time,style: const TextStyle(color: Colors.orange),),
    backgroundColor: Colors.white, 
  );
}

//Available date
Widget _chipDate(String label) {
  return GestureDetector(
    onTap: () {},
    child: Chip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.orange),
      ),
      backgroundColor: Colors.white,
    ),
  );
}

//Info
class infoCard extends StatelessWidget {
  final String title;
  final String value;

  const infoCard({super.key, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            value,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.orange),
          )
        ],
      ),
    );
  }
}
