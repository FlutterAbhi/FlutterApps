import 'package:flutter/material.dart';
import 'package:productapp/model/product_model.dart';
import 'package:productapp/view/detailspage.dart';
import 'package:productapp/controller/prod_provider.dart';
import 'package:provider/provider.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({super.key});
  @override
  State<StatefulWidget> createState() => _GetDataScreen();
}

class _GetDataScreen extends State {
  @override
  Widget build(BuildContext context) {
    TextEditingController imageController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController priceController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data Screen"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: TextField(
              controller: imageController,
              decoration: InputDecoration(
                  label: const Text("Image"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  label: const Text("Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: TextField(
              controller: priceController,
              decoration: InputDecoration(
                  label: const Text("Price"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<ProductProvider>(context,listen: false).changeData(
                   ProductModel(
                    image: imageController.text,
                    prodName: nameController.text,
                    price: priceController.text,
                )
              );
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const DetailsPage()));
              },
              child: const Text("Submit")),
        ],
      ),
    );
  }
}
