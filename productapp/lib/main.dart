import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:productapp/controller/prod_provider.dart';
import 'package:productapp/view/getdata.dart';
import 'package:productapp/model/product_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ProductProvider(
         obj: ProductModel(image: "",
          prodName: "",
          price: "")
        );
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetDataScreen(),
      ),
    );
  }
}


