    import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/Provider/products_Provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
 ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProduct = ref.watch(price as ProviderListenable);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              children: cartProduct.map((product){
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5 ),
                  child: Row(
                    children: [
                      Image.asset(
                        product.image,
                        height: 50,
                        width: 60,
                      ),
                      Text(
                        product.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Text(
                        'N${product.price}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }). toList()
            ),

            // output totals here
          ],
        ),
      ),
    );
  }
}