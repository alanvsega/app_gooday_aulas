import 'package:app_gooday/src/componets/color_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4))
      .then((_) => {Navigator.pushReplacementNamed(context, '/howaccess')});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.primary,
      body: Center(
        child: Image.asset('lib/assets/Logotipo.png'),
      )
    );
  }
}
