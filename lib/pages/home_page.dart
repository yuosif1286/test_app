
import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/s_app_bar.dart';
import 'package:sales_uikit/sales_uikit.dart';
import 'package:test_app/layout/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  void _incrementCounter() {
    var calculate=Calculator();
    setState(() {
      _counter=calculate.addOne(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar:    SAppBar(title: 'Dashboard',showBackButton: true,actions: [IconButton(icon: const Icon(Icons.menu), onPressed: () {
       _scaffoldKey.currentState?.openDrawer();
      }),],),
      drawer: const AppDrawer(),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
       
    );
  }
}
