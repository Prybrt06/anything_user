import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircularButton extends StatelessWidget {
  final String title;
  final Widget screen;

  const CircularButton({required this.title, required this.screen});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ),
          )
        },
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
