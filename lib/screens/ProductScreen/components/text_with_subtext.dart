import 'package:flutter/material.dart';
import 'package:greenery/themes/Constants.dart';

class TitleWithSubTitle extends StatelessWidget {
  const TitleWithSubTitle({
    Key? key,
    required this.subText,
    required this.text,
  }) : super(key: key);

  final String text, subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.only(left: kDefaultPadding),
            width: 240,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: subText,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
