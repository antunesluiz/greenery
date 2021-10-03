import 'package:flutter/material.dart';
import 'package:greenery/screens/ProductScreen/components/body.dart';
import 'package:greenery/themes/Colors.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Body(),
    );
  }
}
