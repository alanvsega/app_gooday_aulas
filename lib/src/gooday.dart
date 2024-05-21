import 'package:app_gooday/src/pages/how_access.dart';
import 'package:app_gooday/src/pages/login.dart';
import 'package:app_gooday/src/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class Gooday extends StatelessWidget {
  const Gooday({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/howaccess': (context) => const HowAccess(),
        '/login': (context) => const Login(),
      }
    );
  }
}