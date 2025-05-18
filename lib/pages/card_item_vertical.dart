
import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/Product/s_cart_vertical.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';

class CartItemVertical extends StatelessWidget {
  const CartItemVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(
        title: 'Cart Item',
        showBackButton: false,
      ),
      body: Center(
        child: SCartVertical(
          imageUrl: 'https://www.pngall.com/wp-content/uploads/4/Shampoo-Transparent.png', 
          title: 'FacTop',
           description: 'Micellar Makup Remove this from', 
           itemCountInWarhouse: 3,
           brand: 'apple',
           discount: 10,
            price: 5000,
            isFavorite: true,)
      ),
    );
  }
}
