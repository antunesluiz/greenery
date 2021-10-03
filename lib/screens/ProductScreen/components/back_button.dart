import 'package:flutter/material.dart';
import 'package:greenery/themes/Constants.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          top: kDefaultPadding,
          left: kDefaultPadding,
        ),
        decoration: BoxDecoration(),
        child: Icon(
          Icons.arrow_back,
        ),
      ),
    );
  }
}
