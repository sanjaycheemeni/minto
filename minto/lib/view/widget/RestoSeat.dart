import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:minto/controller/seat_selection_controller.dart';
import 'package:minto/utils/constants/colors.dart';
import 'package:minto/view/widget/seat.dart';

class RestoSeat extends StatefulWidget {
  final id, tableId;

  final SeatSelectionController controller;
  const RestoSeat(
      {super.key,
      required this.id,
      required this.tableId,
      required this.controller});

  @override
  State<RestoSeat> createState() => _RestoSeatState();
}

class _RestoSeatState extends State<RestoSeat> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print(active);
          setState(() {
            active = !active;
          });
        },
        child: Seat(active: active));
  }
}
