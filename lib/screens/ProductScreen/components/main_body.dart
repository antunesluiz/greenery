import 'package:flutter/material.dart';
import 'package:greenery/screens/ProductScreen/components/back_button.dart';
import 'package:greenery/screens/ProductScreen/components/cart_button_with_product.dart';
import 'package:greenery/screens/ProductScreen/components/price_text.dart';
import 'package:greenery/screens/ProductScreen/components/text_with_subtext.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtonWidget(
            onTap: () {
              Navigator.pop(context);
            },
          ),
          TitleWithSubTitle(
            text: "Fiddle Leaf Fig Topiary\n\n",
            subText: "10\" Nursary Pot",
          ),
          PriceText(value: 90),
          CartButtonWithProductImage(
            onPressed: () {},
            image: 'assets/images/image_1.png',
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
