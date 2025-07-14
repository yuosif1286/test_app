import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/Product/s_cart_horizontal.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';
import 'package:sales_uikit/Constants/Colors/s_colors.dart';

class CardItemHorizontal extends StatelessWidget {
  const CardItemHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final test = 'test';
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: const SAppBar(
        title: 'Cart Item',
        backgroundColor: SColors.primaryMain,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: SCartHorizontal<String>(
          getImageUrl: (p) =>
              'https://www.pngall.com/wp-content/uploads/4/Shampoo-Transparent.png',
          getTitle: (p) => 'FacTop',
          getSubtitle: (p) =>
              'Micellar Makup Remove this from tesst wehjj ewiu dwjuuid iuis',
          getItemCountInWarehouse: (p) => 3,
          getPrice: (p) => 3000,
          onMorePressed: () => {print('test more')},
          onDeletePressed: () => {print('test more')},
          product: test,
        )),
      ),
    );
  }
}
