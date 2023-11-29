import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/mainPages/appbar_view.dart';
import 'package:flutter_application_1/app/modules/home/views/mainPages/navbar_view.dart';

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWidget3());
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar_view(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrival",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text("See all"),
                ],
              ),
              SizedBox(
                width: 500,
                height: 500,
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: SizedBox(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/foto4.jpeg",
                            fit: BoxFit.cover,
                            width: 170,
                            height: 230,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: SizedBox(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/foto1.jpeg",
                            fit: BoxFit.cover,
                            width: 170,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 265,
                      left: 15,
                      child: SizedBox(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/foto2.jpeg",
                            fit: BoxFit.cover,
                            width: 170,
                            height: 220,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 185,
                      right: 15,
                      child: SizedBox(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/foto3.jpeg",
                            fit: BoxFit.cover,
                            width: 170,
                            height: 300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: navbar_view(context),
    );
  }
}
