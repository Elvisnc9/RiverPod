 import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/Provider/products_Provider.dart';
import 'package:riverpod_files/shared/cart_icon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Sale Products'),
        actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemBuilder:(context, index) {
            return Container(
              height: 250,
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                children: [
                 Image.asset(
                  allProducts[index].image,
                  height: 50,
                  width: 60,
                 ),

                 Text(
                  allProducts[index].title,
                  style: const TextStyle(
                   
                    fontWeight: FontWeight.w500,
                  ),
                 ),
              
                 Text(
                  'N${allProducts[index].price}',
                  style: const TextStyle(
                
                    fontWeight: FontWeight.bold,
                  ),
                  
                 ),
                 
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}