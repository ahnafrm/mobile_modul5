// import 'package:appwrite/appwrite.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/app/modules/home/controllers/ClientController.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// class StorageController extends ClientController {
//   Storage? storage;

//   @override
//   void onInit() {
//     super.onInit();
//     //appwrite
//     storage = Storage(client);
//   }

//   Future storeImage() async {
//     try {
//       final result = await storage!.createFile(
//         bucketId: '[6565e72fb32ebfc434c6]',
//         fileId: ID.unique(),
//         file: InputFile.fromPath(
//           path: './assets/gambar1.jpeg',
//           filename: 'gambar1.jepg',
//         ),
//       );

//       print("StorageController:: storeImage $result");
//     } catch (error) {
//       Get.defaultDialog(
//         title: "ErrorStorage",
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
