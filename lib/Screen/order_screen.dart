import 'package:delivery/Screen/welcome_screen.dart';
import 'package:delivery/Widget/circular_button.dart';
import 'package:delivery/Widget/language_button.dart';
import 'package:delivery/constant.dart';
import 'package:delivery/provider/languageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
      ),      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          child: ListView(
            children: [
              Text(
                content[language]['orderTitle'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                minLines: 10,
                maxLines: null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularButton(
                title: 'Next',
                screen: WelcomeScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
