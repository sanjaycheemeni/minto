import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minto/utils/constants/colors.dart';
import 'package:minto/view/widget/foodItem.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceTextSize = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: backgrnd,
      body: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          Text(
            'SELECT FOOD',
            style: TextStyle(fontSize: _deviceTextSize * 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          MenuItem(
              parentContext: context,
              foodImage: 'images/food1.png',
              foodName: 'Chicken Burger',
              foodPrice: '100'),
          MenuItem(
              parentContext: context,
              foodImage: 'images/food2.png',
              foodName: 'Biriyani 2',
              foodPrice: '150'),
          MenuItem(
              parentContext: context,
              foodImage: 'images/food1.png',
              foodName: 'Veg Burger',
              foodPrice: '100')
        ],
      ),
    );
  }
}
