import 'package:flutter/material.dart';
import 'package:greenery/themes/Colors.dart';
import 'package:greenery/themes/Constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            country: 'Russia',
            price: 444,
            title: 'Samantha',
            onPressed: () {},
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            country: 'Angelica',
            price: 444,
            title: 'Angelica',
            onPressed: () {},
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            country: 'Russia',
            price: 444,
            title: 'Samantha',
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPadding)
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.country,
    required this.price,
    required this.onPressed,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 1.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: greenColor.withOpacity(0.23),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                              color: greenColor.withOpacity(0.5),
                            ))
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: greenColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
