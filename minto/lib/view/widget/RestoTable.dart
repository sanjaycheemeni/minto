import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:minto/controller/seat_selection_controller.dart';
import 'package:minto/model/RestoTable.dart';
import 'package:minto/utils/constants/colors.dart';
import 'package:minto/view/widget/RestoSeat.dart';

class RestoTable extends StatelessWidget {
  final seats;
  final SeatSelectionController controller;

  const RestoTable({super.key, required this.seats, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: 400,
        child: Column(children: [
          // seat row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RestoSeat(
                id: 1,
                controller: controller,
                tableId: 1,
              ),
              RestoSeat(
                id: 2,
                controller: controller,
                tableId: 1,
              ),
              RestoSeat(
                id: 3,
                controller: controller,
                tableId: 1,
              ),
              RestoSeat(
                id: 4,
                controller: controller,
                tableId: 1,
              ),
            ],
          ),

          tableView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RestoSeat(
                id: 1,
                controller: controller,
                tableId: 1,
              ),
              RestoSeat(
                id: 2,
                controller: controller,
                tableId: 1,
              ),
              RestoSeat(
                id: 3,
                controller: controller,
                tableId: 1,
              ),
              RestoSeat(
                id: 4,
                controller: controller,
                tableId: 1,
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget tableView() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
      alignment: Alignment.center,
      // width: 400,
      height: 100,
      decoration: BoxDecoration(
          color: tableColor, borderRadius: BorderRadius.circular(4)),
      child: const Text('Table'),
    );
  }
}
