import 'package:delivery/Screen/welcome_screen.dart';
import 'package:delivery/Widget/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Anything.app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(title: 'English', screen: const WelcomeScreen()),
            SizedBox(
              height: 20,
            ),
            MyButton(title: 'Assamese', screen: const WelcomeScreen()),
          ],
        ),
      ),
    );
  }
}
