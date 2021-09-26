import 'package:flutter/material.dart';
import 'package:greenery/Themes/Colors.dart';

class DetailsPageScreen extends StatelessWidget {
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
                Text(
                  'greenery nyc',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.1,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(
                  height: 32,
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
                SizedBox(
                  height: 32.0,
                ),
                itemRow(Icons.water, 'Water', 'every 7 days'),
                SizedBox(height: 16.0),
                itemRow(Icons.ac_unit, 'humidity', 'up to 82%'),
                SizedBox(height: 16.0),
                itemRow(Icons.straighten, 'Size', '38" - 48"tdll'),
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
