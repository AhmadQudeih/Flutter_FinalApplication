// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_full_application/Pages/login.dart';
import 'package:flutter_full_application/Pages/signup.dart';
import 'package:flutter_full_application/Pages/welcom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // -------->>> تعريف الصفحات
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Welcom(),
        "/login": (context) => const LoginForm(),
        "/signup": (context) => const SignupForm(),
      },
    );
  }
}
