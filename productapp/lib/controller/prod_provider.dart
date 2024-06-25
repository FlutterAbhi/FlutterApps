
import 'package:flutter/material.dart';
import 'package:productapp/model/product_model.dart';

class ProductProvider extends ChangeNotifier{
  ProductModel? obj;


  ProductProvider({
    required this.obj
});

void changeData(ProductModel changeobj){
  obj!.image=changeobj.image;
  obj!.prodName=changeobj.prodName;
  obj!.price=changeobj.price;
  notifyListeners();
}

void changequantity(ProductModel qobj){
  obj!.quantity=qobj.quantity;
}
}