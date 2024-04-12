import 'package:delivery/provider/languageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({super.key});

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  @override
  Widget build(BuildContext context) {
    String language = Provider.of<LanguageProvider>(context).language;
    return TextButton(
      onPressed: () {
        Provider.of<LanguageProvider>(context, listen: false).toggleLanguage();
      },
      child: Text(
        language == 'English' ? 'E' : 'অ',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
