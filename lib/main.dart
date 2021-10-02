import 'package:flutter/material.dart';
import 'package:greenery/Themes/Colors.dart';
import 'package:greenery/screens/HomeScreen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenery',
      theme: ThemeData(
        primaryColor: greenColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
