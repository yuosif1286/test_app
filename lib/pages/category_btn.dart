



import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/Category/s_category.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';

class CategoryBtn extends StatelessWidget {
  const CategoryBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.grey,
      appBar: SAppBar(
        title: 'category ',
      ),
      body: Center(
        child: SCategory('Short',selected: true,)
      ),
    );
  }
}