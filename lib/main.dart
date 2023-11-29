import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/controllers/auth_controller.dart';
import 'package:flutter_application_1/app/modules/home/views/homeScreen.dart';
import 'package:flutter_application_1/app/modules/home/views/notification_handler.dart';
import 'package:flutter_application_1/app/modules/home/views/register_view.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'app/routes/app_pages.dart';

// void main() {
//   runApp(
//     GetMaterialApp(
//       title: "Application",
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//     ),
//   );
// }

final AuthController _authController = Get.put(AuthController());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Get.putAsync(() async => await SharedPreferences.getInstance());
  await FirebaseMessagingHandler().initPushNotification();
  await FirebaseMessagingHandler().initLocalNotification();

  runApp(
    GetMaterialApp(
      // home: RegisterPage(),
      initialRoute: _authController.isLoggedIn.value ? '/home' : '/register',
      getPages: [
        GetPage(name: '/register', page: () => const RegisterPage()),
        GetPage(name: '/home', page: () => const MyWidget()),
      ],
    ),
  );
}
