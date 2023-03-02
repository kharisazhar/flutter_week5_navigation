import 'package:flutter/material.dart';
import 'package:flutter_week5_navigation/screen/home_page.dart';
import 'package:flutter_week5_navigation/screen/marketplace_page.dart';
import 'package:flutter_week5_navigation/screen/preview_page.dart';
import 'package:flutter_week5_navigation/screen/profile_page.dart';

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
        primarySwatch: Colors.blue,
      ),

      /// Navigation with named
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/profile': (_) => const ProfilePage(),
        '/marketplace': (_) => MarketplacePage(
              dataBarang: [],
            ),
        '/preview_page': (_) => const PreviewPage(),
      },

      /// Navigation without named
      // home: HomePage(),
    );
  }
}
