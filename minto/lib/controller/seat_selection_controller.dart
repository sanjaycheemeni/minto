import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:minto/model/RestoTable.dart';

class SeatSelectionController extends GetxController {
  // for 2 table hostel
  Rx<RestoTable> table1 = RestoTable(tableId: 1).obs;
  Rx<RestoTable> table2 = RestoTable(tableId: 2).obs;

  void selected(tableid, seatid) {
    print("***" + table1.value.seats[0].isActive.toString());
    table1.value.seats?[seatid].isActive =
        toggle(table1.value.seats[seatid].isActive);
  }

  bool toggle(bool isActive) {
    return !isActive;
  }
}
