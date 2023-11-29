// import 'package:flutter_application_1/app/modules/home/controllers/auth_controller.dart';
// import 'package:get/get.dart';

// class HomeBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<AuthController>(
//       () => AuthController(),
//     );
//   }
// }

import 'package:flutter_application_1/app/modules/home/controllers/ClientController.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/app/modules/home/controllers/AccountController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ClientController>(ClientController());
    Get.put<AccountController>(AccountController());
  }
}
