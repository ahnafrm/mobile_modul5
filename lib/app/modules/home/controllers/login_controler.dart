import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/profil_view.dart';

class LoginController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    String username = usernameController.text;
    String password = passwordController.text;

    print('Username: $username');
    print('Password: $password');

    if (username.isEmpty || password.isEmpty) {
      const snackBar = SnackBar(
        content: Text('Username dan Password tidak boleh kosong!'),
        duration: Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (!containsDigit(password)) {
      const snackBar = SnackBar(
        content: Text('Password harus mengandung angka!'),
        duration: Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    }
  }

  bool containsDigit(String text) {
    return text.runes.any(
      (rune) => isDigit(String.fromCharCode(rune)),
    );
  }

  bool isDigit(String character) {
    // return int.tryParse(character) != null;
    // return '0' <= character && character <= '9';

    return character.codeUnitAt(0) >= '0'.codeUnitAt(0) &&
        character.codeUnitAt(0) <= '9'.codeUnitAt(0);
  }
}
