import 'package:flutter/material.dart';
import 'package:shopee/screens/products_overview_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductsOverview(),
    );
  }
}
