import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const TabsScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blueGrey[200],
          child: const Center(
            child: Text("Splash Screen"),
          ),
        ),
      ),
    );
  }
}
