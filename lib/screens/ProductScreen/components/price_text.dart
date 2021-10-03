import 'package:flutter/material.dart';
import 'package:greenery/themes/Colors.dart';
import 'package:greenery/themes/Constants.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    Key? key,
    required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              '\$',
              style: TextStyle(
                color: greenColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            '$value',
            style: TextStyle(
              color: greenColor,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ],
      ),
    );
  }
}
