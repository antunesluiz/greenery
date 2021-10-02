import 'package:flutter/material.dart';
import 'package:greenery/Themes/Colors.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: 200.0,
                  child: Text(
                    'Product Overview',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                itemRow(Icons.water, 'Water', 'every 7 days'),
                SizedBox(height: 12.0),
                itemRow(Icons.ac_unit, 'humidity', 'up to 82%'),
                SizedBox(height: 12.0),
                itemRow(Icons.straighten, 'Size', '38" - 48"tdll'),
              ],
            ),
          ),
          SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                color: darkGreenColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  bottomLeft: Radius.circular(32.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20.0),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Delivery Information',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                color: darkGreenColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  bottomLeft: Radius.circular(32.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20.0),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Return Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 90.0,
                  decoration: BoxDecoration(
                    color: blackColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  itemRow(icon, name, description) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        Text(
          description,
          style: TextStyle(
            color: Colors.white54,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
