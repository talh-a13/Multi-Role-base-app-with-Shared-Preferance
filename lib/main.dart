import 'package:flutter/material.dart';
import 'package:flutter_application_multi_role_baseapp_sharedpreferance/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
