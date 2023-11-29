// import 'package:appwrite/appwrite.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/app/modules/home/controllers/ClientController.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// class DatabaseController extends ClientController {
//   Databases? databases;
//   @override
//   void onInit() {
//     super.onInit();
//     // appwrite
//     databases = Databases(client);
//   }

//   Future storeUserName(Map map) async {
//     try {
//       // ignore: unused_local_variable
//       final result = await databases!.createDocument(
//         databaseId: "6565e19d881d38b6a846",
//         documentId: ID.unique(),
//         collectionId: "6565e2ad65a722457a33",
//         data: map,
//         permissions: [
//           Permission.read(Role.user("6565e6c65d822d39c31c")),
//           Permission.update(Role.user("6565e6c65d822d39c31c")),
//           Permission.delete(Role.user("6565e6c65d822d39c31c")),
//         ],
//       );

//       print("DatabaseController:: storeUserName $databases");
//     } catch (error) {
//       Get.defaultDialog(
//         title: "Error Database",
//         titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
//         titleStyle: Get.context?.theme.textTheme.titleLarge,
//         content: Text(
//           "$error",
//           style: Get.context?.theme.textTheme.bodyMedium,
//           textAlign: TextAlign.center,
//         ),
//         contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
//       );
//     }
//   }
// }
