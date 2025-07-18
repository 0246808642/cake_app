import 'package:cake_shop/pages/cart_page.dart';
import 'package:cake_shop/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:cake_shop/pages/intro_page.dart';
import 'package:provider/provider.dart';
import 'package:cake_shop/pages/shop.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=> Shop(),
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intropage':(context)=> const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
