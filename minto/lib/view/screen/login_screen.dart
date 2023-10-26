import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minto/controller/login_controller.dart';
import 'package:minto/utils/constants/colors.dart';
import 'package:minto/view/widget/LoginButton.dart';
import 'package:minto/view/widget/TextField.dart';

class LoginScreen extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceTextSize = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: _deviceHeight * .2),

              //welcome back
              Center(
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: _deviceTextSize * 35),
                ),
              ),

              SizedBox(height: _deviceHeight * 0.1),

              //username textfield
              EditTextField(
                controller: loginController.usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(
                height: _deviceHeight * 0.02,
              ),

              //password textfield
              EditTextField(
                  controller: loginController.passwordController,
                  hintText: 'Password',
                  obscureText: true),

              SizedBox(
                height: _deviceHeight * 0.02,
              ),

              SizedBox(
                height: _deviceHeight * 0.03,
              ),

              //login button
              Obx(() => Opacity(
                  opacity: (loginController.isLoading == true) ? 0.5 : 1,
                  child: LoginButton(
                    onTap: () {},
                    text: (loginController.isLoading == true)
                        ? 'Loading...'
                        : 'Login',
                    clr: MainRed,
                  ))),

              SizedBox(
                height: _deviceHeight * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
