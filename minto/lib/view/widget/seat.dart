import 'package:flutter/widgets.dart';
import 'package:minto/utils/constants/colors.dart';

class Seat extends StatelessWidget {
  final active;
  const Seat({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: active ? seatActive : seatInActive,
          border: Border.all(color: borderColor, width: .5)),
    );
  }
}
