import 'package:flutter/material.dart';
import 'package:greenery/Containers/ProductPageScreen/ProductPageScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductPageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
