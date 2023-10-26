import 'package:flutter/material.dart';
import 'package:minto/controller/seat_selection_controller.dart';
import 'package:minto/utils/constants/colors.dart';

class RestoSeat extends StatelessWidget {
  final id, tableId;
  final SeatSelectionController controller;
  const RestoSeat(
      {super.key,
      required this.id,
      required this.tableId,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    final active = controller.table1.value.seats[id].isActive;
    print("/////////" + active.toString());
    return GestureDetector(
      onTap: () {
        print(controller.table1.value.seats[id].isActive);
        controller.selected(id, tableId);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: active ? Colors.amber : Colors.red,
            border: Border.all(color: borderColor, width: .5)),
      ),
    );
  }
}
