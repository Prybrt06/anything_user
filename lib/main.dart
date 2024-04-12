import 'package:delivery/Screen/home_screen.dart';
import 'package:delivery/provider/languageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LanguageProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 20, 227, 79),
            primary: Color.fromARGB(255, 20, 227, 79),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
