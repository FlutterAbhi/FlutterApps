import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:productapp/controller/prod_provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});
  @override
  State<StatefulWidget> createState() => _DetailsPage();
}

class _DetailsPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Details"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.network(
                    Provider.of<ProductProvider>(context).obj!.image!,
                ),
                const SizedBox(height: 10),
                Text("Product Name : ${Provider.of<ProductProvider>(context).obj!.prodName!}"),
                const SizedBox(height: 10),
                Text("Product Price Rs.: ${Provider.of<ProductProvider>(context).obj!.price}"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(onPressed: (){},
                     icon: const Icon(Icons.favorite_outline_rounded)
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                    Text(("${Provider.of<ProductProvider>(context).obj!.quantity}")),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
