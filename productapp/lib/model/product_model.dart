
class ProductModel {
  String? image;
  String? prodName;
  String? price;
  bool? isfavourite=false;
  int? quantity=0;
  
  ProductModel({
    required this.image,
    required this.prodName,
    required this.price,
    this.isfavourite,
    this.quantity,
});
}