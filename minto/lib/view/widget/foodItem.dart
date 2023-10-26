import 'package:flutter/material.dart';
import 'package:minto/utils/constants/colors.dart';

class MenuItem extends StatelessWidget {
  final foodName;
  final foodPrice;
  final foodImage;
  final Function()? ontap;
  final parentContext;
  const MenuItem(
      {required String this.foodImage,
      required String this.foodName,
      required String this.foodPrice,
      Function()? this.ontap,
      super.key,
      required BuildContext this.parentContext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  child: Image.asset(
                    foodImage,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      'Rs ' + foodPrice,
                      style: TextStyle(color: seatInActive, fontSize: 15),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
