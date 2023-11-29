import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/controllers/profil_controler.dart';
import 'dart:io';
import 'package:flutter_application_1/app/modules/home/views/homeScreen.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  // final ProfileController _profileController = Get.put(ProfileController());
  final ProfileController _profileController = ProfileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('My Profile'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/lucinta.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: _profileController.selectedImage.value != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            File(_profileController.selectedImage.value!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.black,
                        ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _profileController.pickImageFromCamera(),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                child: const Text('KAMERA'),
              ),
              ElevatedButton(
                onPressed: () => _profileController.pickImageFromGallery(),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                child: const Text('GALERI'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyWidget(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                child: const Text('NEXT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
