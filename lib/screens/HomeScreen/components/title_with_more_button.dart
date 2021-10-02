import 'package:flutter/material.dart';
import 'package:greenery/Themes/Colors.dart';
import 'package:greenery/Themes/Constants.dart';

class TextWithMoreButton extends StatelessWidget {
  const TextWithMoreButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Title(text: title),
          Spacer(),
          TextButton(
            onPressed: onPressed,
            child: Container(
              alignment: Alignment.center,
              height: 24,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: greenColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'More',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
