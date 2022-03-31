import 'package:barber_flutter/pages/login/login.dart';
import 'package:flutter/material.dart';
///import 'package:barber_flutter/assets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barber App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple  
      ),
      home: const LoginPage(),
    );
  }
}
