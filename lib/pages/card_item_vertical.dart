import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/Product/s_cart_vertical.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';

class CartItemVertical extends StatelessWidget {
  const CartItemVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: const SAppBar(
        title: 'Cart Item',
        showBackButton: false,
      ),
      body: Center(
          child: SCartVertical(
        getImageUrl: (p) =>
            'https://www.pngall.com/wp-content/uploads/4/Shampoo-Transparent.png',
        getTitle: (p) => 'FacTop',
        getSubTitle: (p) => 'Micellar Makup Remove this from',
        getItemCount: (p) => 3,
        getBrand: (p) => 'apple',
        getDiscount: (p) => 10,
        getPrice: (p) => 5000,
        getIsFavorite: (p) => true,
        product: 'Test',
      )),
    );
  }
}
