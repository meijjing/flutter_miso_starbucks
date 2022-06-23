import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso/miso.dart';
import 'package:miso_starbucks/starbucks.dart';

void main() {
  runApp(MaterialApp(
    title: 'Miso&Starbucks',
    initialRoute: '/',
    routes: {
      '/': (context) => MainPage(),
      '/miso': (context) => MisoPage(),
      '/starbucks': (context) => StarbucksPage()
    },
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "BottomNavigationBar & IndexedStack",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(12, 40, 12, 12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/miso');
              },
              style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                padding: EdgeInsets.all(16),
              ),
              child: Text('Miso'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/starbucks');
              },
              style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                padding: EdgeInsets.all(16),
              ),
              child: Text('Starbucks'),
            ),
          ),
        ],
      ),
    ));
  }
}
