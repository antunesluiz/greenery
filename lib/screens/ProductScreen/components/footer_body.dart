import 'package:flutter/material.dart';
import 'package:greenery/screens/ProductScreen/components/footer_title.dart';
import 'package:greenery/themes/Colors.dart';
import 'package:greenery/themes/Constants.dart';

class FooterBody extends StatelessWidget {
  const FooterBody({
    Key? key,
  }) : super(key: key);

  Container itemPlanting(BuildContext context, title, description, unity) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width / 2 - 30,
      margin: EdgeInsets.only(top: kDefaultPadding * 0.7),
      decoration: BoxDecoration(
        color: darkGreenColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 42.0,
                ),
              ),
              SizedBox(width: 8.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  unity,
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ),
            ],
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FooterTitle(title: 'Planting'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              itemPlanting(context, '250', 'water', 'ml'),
              itemPlanting(context, '80', 'sunshine', 'ºc'),
            ],
          ),
        ],
      ),
    );
  }
}
