import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minto/controller/seat_selection_controller.dart';
import 'package:minto/utils/constants/colors.dart';
import 'package:minto/view/widget/RestoTable.dart';

class SeatSelectionPage extends StatelessWidget {
  SeatSelectionPage({super.key});
  SeatSelectionController seatSelectionController =
      Get.put(SeatSelectionController());

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceTextSize = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: _deviceWidth * .13,
          ),
          Text(
            'SELECT SEATS',
            style: TextStyle(fontSize: _deviceTextSize * 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: _deviceWidth * .13,
          ),
          Obx(() => RestoTable(
                seats: seatSelectionController.table1.value,
                controller: seatSelectionController,
              )),
          Obx(() => RestoTable(
                seats: seatSelectionController.table2.value,
                controller: seatSelectionController,
              )),
        ],
      ),
    );
  }
}
