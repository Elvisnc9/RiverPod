
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

const List<Product> allProducts = [
  Product(
    id:'1', title: 'BackPack', price: 30, image: 'assets/products/backpack.png'),
    Product(id: '2', title: 'Drum', price: 54, image: 'assets/products/drum.png'),
    Product(id: '3', title: 'Guitar', price: 69, image: 'assets/products/guitar.png'),
    Product(id: '4', title: 'Jeans', price: 25, image: 'assets/products/jeans.png'),
    Product(id: '5', title: 'Karati', price: 15, image: 'assets/products/karati.png'),
    Product(id: '6', title: 'Shorts', price: 10, image: 'assets/products/shorts.png'),
    Product(id: '7', title: 'Skates', price: 80, image: 'assets/products/skates.png'),
    Product(id: '8', title: 'SuitCase', price: 84, image: 'assets/products/suitcase.png')
];


final  productsProvider =Provider((ref){
  return allProducts;
});

final priceProvider = Provider((ref){
  return allProducts.where((p) => p.price > 50).toList();
});