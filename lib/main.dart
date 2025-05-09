import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';
import 'package:sales_uikit/sales_uikit.dart';
import 'package:test_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=> const HomePage(title: 'Flutter Demo app',)
      },
    );
  }
}
