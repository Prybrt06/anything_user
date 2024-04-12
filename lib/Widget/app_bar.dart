import 'package:delivery/Widget/language_button.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Anything.app'),
      actions: const [
        LanguageButton(),
      ],
    );
  }
}
