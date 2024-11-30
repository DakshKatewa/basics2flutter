import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text(" Welcome to the app"),
      backgroundColor: const Color.fromARGB(255, 204, 120, 120),
    ));
  }
}
