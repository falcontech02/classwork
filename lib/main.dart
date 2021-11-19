import 'package:classwork/screen/homepage.dart';
import 'package:classwork/screen/loginpage.dart';
import 'package:classwork/screen/registerpage.dart';
import 'package:classwork/screen/welcompage.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
      routes: {
        login: (context) => const LoginPage(),
        home: (context) => const HomePage(),
        register: (context) => const RegisterPage(),
      },
    );
  }
}

