import 'package:flutter/material.dart';
import 'Login_screen.dart';
import 'Counter_Screen.dart';

void main() {
  runApp(const LoginScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
