import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: Center(
        child: Text('Welcome to the Homepage!',
        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),
        fontSize: 24,
        fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}