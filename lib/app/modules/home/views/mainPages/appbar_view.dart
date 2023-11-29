import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/api/pages/home_page_stateful.dart';
import 'package:flutter_application_1/app/modules/home/controllers/WebViewController.dart';
import 'package:flutter_application_1/app/modules/home/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:webview_flutter/webview_flutter.dart';

final AuthController _authController = Get.put(AuthController());

AppBar appbar_view() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        Get.to(
          const HomePageStateful(),
          transition: Transition.leftToRight,
          duration: const Duration(milliseconds: 500),
        );
      },
      color: Colors.black,
    ),
    actions: [
      IconButton(
        // icon: const Icon(Icons.shopping_cart),
        icon: const Icon(Icons.exit_to_app),
        onPressed: () {
          _authController.logout();
        },
        color: Colors.black,
      ),
      GestureDetector(
        onTap: () {
          Get.to(WebViewWidget(controller: controller));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/pinterest.jpeg'),
        ),
      ),
    ],
    title: const Text(
      'PeriBerbi Shop',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
