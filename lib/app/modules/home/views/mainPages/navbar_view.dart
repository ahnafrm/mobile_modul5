import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/mainPages/womenScreen.dart';
import 'package:flutter_application_1/app/modules/home/views/mainPages/manScreen.dart';

BottomNavigationBar navbar_view(BuildContext context) {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyWidget2()),
            );
          },
          child: const Icon(
            Icons.woman,
            color: Colors.black,
          ),
        ),
        label: 'Woman',
      ),
      BottomNavigationBarItem(
        icon: GestureDetector(
          // onTap: () {
          //   // Get.to(WebViewWidget(
          //   //     controller: controller)); // Gantilah dengan halaman tujuan Anda
          //   Get.to(WebViewWidget(controller: controller));
          // },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyWidget3()),
            );
          },
          child: const Icon(
            Icons.man,
            color: Colors.black,
          ),
        ),
        label: 'Man',
      ),
    ],
  );
}
