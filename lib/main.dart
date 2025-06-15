import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';
import 'package:sales_uikit/pages/no_data_available.dart';
import 'package:test_app/layout/drawer.dart';
import 'package:test_app/pages/card_item_horizantl.dart';
import 'package:test_app/pages/card_item_vertical.dart';
import 'package:test_app/pages/category_btn.dart';
import 'package:test_app/pages/typography.dart';
import 'package:sales_uikit/Components/Button/s_btn_back.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Track the current theme mode
  ThemeMode _themeMode = ThemeMode.light;

  // Function to toggle between light and dark mode
  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: _themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              title: 'Flutter Demo app',
              toggleTheme: _toggleTheme,
              isDarkMode: _themeMode == ThemeMode.dark,
            ),
        '/cartItemVertical': (context) => const CartItemVertical(),
        '/typography': (context) => const TypographyPage(),
        '/cartItemHorizontal': (context) => const CardItemHorizontal(),
        '/category': (context) => const CategoryBtn(),
        '/noData': (context) => NoDataAvailablePage(
              child: SButtonBack(
                onPressed: () => print('this test used'),
              ),
            )
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HomePage({
    super.key,
    required this.title,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: SAppBar(
        title: title,
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Theme: ${isDarkMode ? 'Dark' : 'Light'}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cartItemVertical');
              },
              child: const Text('Go to Vertical Card'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cartItemHorizontal');
              },
              child: const Text('Go to Horizontal Card'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/typography');
              },
              child: const Text('Go to Typography'),
            ),
          ],
        ),
      ),
    );
  }
}
