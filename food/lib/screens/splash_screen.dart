import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage("images/Group.png"),
          ),
          Center(
            child: Positioned(
              child: Image(
                image: AssetImage("images/Group 34.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
