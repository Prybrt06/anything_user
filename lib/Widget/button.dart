import 'package:delivery/provider/languageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Widget screen;

  MyButton({required this.title, required this.screen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Provider.of<LanguageProvider>(context, listen: false).changeLanguage(title),
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        )
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
