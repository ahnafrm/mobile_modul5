import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/AccountPage.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/app/modules/home/bindings/home_binding.dart';
// import 'package:flutter_application_1/app/modules/home/views/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      initialBinding: HomeBinding(), // Add this line to initialize the bindings
      home: RegistrationScreen(),
    );
  }
}
