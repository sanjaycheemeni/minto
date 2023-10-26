import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:minto/view/screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay navigation to the next screen using Future.delayed
    Future.delayed(Duration(seconds: 3), () {
      Get.off(LoginScreen());
    });

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Minto',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
