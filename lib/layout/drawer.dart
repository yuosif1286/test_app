import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            duration:Duration(microseconds: 450) ,
            decoration: BoxDecoration(color: Colors.deepPurple,),
            child: Text('Navigation Menu', 
              style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Cart Item Vertacl'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cartItemVertical');
            },
          ),
          ListTile(
            leading: const Icon(Icons.card_giftcard),
            title: const Text('Cart Item horizantl'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cartItemHorizantl');
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_snippet),
            title: const Text('Typography'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/typography');
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_snippet),
            title: const Text('Category'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/category');
            },
          ),
        ],
      ),
    );
  }
}