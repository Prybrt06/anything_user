import 'package:delivery/Screen/order_screen.dart';
import 'package:delivery/Widget/circular_button.dart';
import 'package:delivery/Widget/language_button.dart';
import 'package:delivery/constant.dart';
import 'package:delivery/provider/languageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String language = Provider.of<LanguageProvider>(context).language;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Anything.app'),
        actions: const [
          LanguageButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                content[language]['welcome'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const CircularButton(title: 'Order', screen: OrderScreen()),
              const SizedBox(
                width: 40,
              ),
              Text(
                content[language]['welcome1'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
