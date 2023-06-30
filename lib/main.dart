import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wolvesvn/ui/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int second = 3;
  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black87,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              width: 150,
              height: 150,
              fit: BoxFit.contain,
              scale: 0.1,
            ),
            const Text(
              "Bạn tốt - Tôi tốt - Chúng ta cùng tốt",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.orange),
            )
          ],
        ),
      ),
    );
  }

  void startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (second > 0) {
          second--;
        } else {
          _timer!.cancel();
          navToLogin();
        }
      });
    });
  }

  void navToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
}
