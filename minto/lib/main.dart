import 'package:flutter/material.dart';
import 'package:minto/view/screen/login_screen.dart';
import 'package:minto/view/screen/seat_selection_screen.dart';
import 'package:minto/view/screen/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Poppins"),
    home: SeatSelectionPage(),
  ));
}
