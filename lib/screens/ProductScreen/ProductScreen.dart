import 'package:flutter/material.dart';
import 'package:greenery/Screens/ProductOverviewScreen/ProductOverviewScreen.dart';
import 'package:greenery/Themes/Colors.dart';
import 'package:greenery/Themes/Images.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32.0),
                    Icon(Icons.arrow_back),
                    SizedBox(height: 12.0),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Fiddle Leaf Fig Topiary',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      '10" Nursery Pot',
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '\$',
                            style: TextStyle(
                              color: greenColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          '85',
                          style: TextStyle(
                            color: greenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 52,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ProductOverviewScreen(),
                                  ),
                                );
                              },
                              backgroundColor: greenColor,
                              child: Icon(Icons.shopping_cart),
                            ),
                            Spacer(),
                            Container(
                              child: Image.network(
                                productImage,
                              ),
                            ),
                            SizedBox(
                              width: 56,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 4),
                  Text(
                    'Planting',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemRow(context, '250', 'water', 'ml'),
                      itemRow(context, '80', 'sunshine', 'ºc'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  itemRow(context, title, description, unity) {
    return Container(
      height: 90.0,
      width: MediaQuery.of(context).size.width / 2 - 50,
      decoration: BoxDecoration(
        color: darkGreenColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
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
                  fontSize: 52.0,
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
}
