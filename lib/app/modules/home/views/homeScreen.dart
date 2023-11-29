import 'package:flutter/material.dart';
// import 'package:flutter_application_1/app/modules/home/views/page1/bg_page1.dart';
// import 'package:flutter_application_1/app/modules/home/views/page1/button_pg1.dart';
import 'package:flutter_application_1/app/modules/home/views/mainPages/womenScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key});

  // Expanded text_pg1(String text) {
  //   return Expanded(
  //     child: Center(
  //       child: Text(
  //         text,
  //         style: const TextStyle(
  //           color: Colors.black,
  //           fontSize: 86,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/lucinta.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // text_pg1("Be"),
            // text_pg1("fine with you"),

            const Positioned(
              bottom: 135,
              left: 0,
              right: 180,
              child: Center(
                child: Text(
                  'Be',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 86,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Positioned(
              bottom: 180,
              left: 160,
              right: 0,
              child: Center(
                child: Text(
                  "There's absolutely",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const Positioned(
              bottom: 155,
              left: 220,
              right: 0,
              child: Center(
                child: Text(
                  "fine with you",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const Positioned(
              bottom: 80,
              left: 150,
              right: 0,
              child: Center(
                child: Text(
                  "crazy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 86,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWidget2()),
                  );
                },
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
