import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/controllers/ClientController.dart';
import 'package:flutter_application_1/app/modules/home/views/LoginScreen.dart';
import 'package:flutter_application_1/app/modules/home/views/homeScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AccountController extends ClientController {
  Account? account;

  @override
  void onInit() {
    super.onInit();

    // appwrite
    account = Account(client);
  }

  Future createAccount(Map map) async {
    try {
      final result = await account!.create(
        userId: map['userId'],
        email: map['email'],
        password: map['password'],
        name: map['name'],
      );
      print("AccountController:: createAccount $result");
      Get.off(LoginScreen());
    } catch (error) {
      Get.defaultDialog(
        title: "Error Account",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }

  Future createEmailSession(Map map) async {
    try {
      final result = await account!.createEmailSession(
        email: map['email'],
        password: map['password'],
      );

      print("AccountController::createEmailSession$result");
      Get.off(MyWidget());
    } catch (error) {
      Get.defaultDialog(
        title: "ErrorAccount",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
}
