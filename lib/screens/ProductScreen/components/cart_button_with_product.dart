import 'package:flutter/material.dart';
import 'package:greenery/themes/Colors.dart';
import 'package:greenery/themes/Constants.dart';

class CartButtonWithProductImage extends StatelessWidget {
  const CartButtonWithProductImage({
    Key? key,
    required this.onPressed,
    required this.image,
  }) : super(key: key);

  final Function() onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: Container(
        height: size.height * 0.4,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: size.width * 0.3,
              child: FloatingActionButton(
                onPressed: onPressed,
                backgroundColor: greenColor,
                child: Icon(
                  Icons.shopping_cart,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: kDefaultPadding),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
