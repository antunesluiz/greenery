import 'package:flutter/material.dart';
import 'package:greenery/Containers/HomePageScreen/MyHomePageScreen.dart';

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
      home: MyHomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
