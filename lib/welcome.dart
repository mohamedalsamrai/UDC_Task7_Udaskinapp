import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udaskinapp/signIn.dart';
import 'package:udaskinapp/signUp.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/01.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              const Text(
                'UCARE',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                ),
              ),
              const Text(
                'Invest in your youthful face',
                style: TextStyle(
                  fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600
                  // shadows: [
                  //   Shadow(
                  //     blurRadius: 10.0,
                  //     color: Colors.black87,
                  //     offset: Offset(2.0, 2.0),
                  //   ),
                  // ],
                ),
              ),
              SizedBox(height: 250),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signin()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('Sign In'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Text('Sign Up'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
