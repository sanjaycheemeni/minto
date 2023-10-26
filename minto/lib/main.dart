import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/state_manager.dart';
import 'package:minto/view/screen/food_list_page.dart';
import 'package:minto/view/screen/login_screen.dart';
import 'package:minto/view/screen/seat_selection_screen.dart';
import 'package:minto/view/screen/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(fontFamily: "Poppins"),
    home: SplashScreen(),
  ));
}
