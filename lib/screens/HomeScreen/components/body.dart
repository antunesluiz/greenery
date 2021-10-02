import 'package:flutter/material.dart';
import 'package:greenery/screens/HomeScreen/components/featured_plants.dart';

import 'package:greenery/screens/HomeScreen/components/header_with_search_box.dart';
import 'package:greenery/screens/HomeScreen/components/recommend_plants.dart';
import 'package:greenery/screens/HomeScreen/components/title_with_more_button.dart';
import 'package:greenery/themes/Constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithSearchBox(size: size),
          TextWithMoreButton(title: "Recommended", onPressed: () {}),
          RecommendedPlants(),
          TextWithMoreButton(title: "Featured Plants", onPressed: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
