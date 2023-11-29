import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/controllers/AccountController.dart';
import 'package:flutter_application_1/app/modules/home/views/LoginScreen.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  final AccountController accountController = Get.put(
      AccountController()); // Assuming you've set up your bindings correctly

  final TextEditingController userIdController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/lucinta.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: userIdController,
                decoration: InputDecoration(
                  labelText: 'User ID',
                  filled: true,
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  filled: true,
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Call your createAccount function from the controller
                  accountController.createAccount({
                    'userId': userIdController.text,
                    'email': emailController.text,
                    'password': passwordController.text,
                    'name': nameController.text,
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: Text('Register'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: const Text('Sudah memiliki akun? Login di sini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
