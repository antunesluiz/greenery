import 'package:flutter/material.dart';
import 'package:greenery/screens/ProductScreen/components/footer_body.dart';

import 'package:greenery/screens/ProductScreen/components/main_body.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainBody(),
          FooterBody(),
        ],
      ),
    );
  }
}
