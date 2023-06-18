import 'package:flutter/material.dart';
import 'package:widgets/config/theme/app_theme.dart';
import 'package:widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets/presentation/screens/cards/cards_screen.dart';
import 'package:widgets/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Widgets',
      theme: AppTheme(selectedColor: 1).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons':(context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen()
      },
    );
  }
}
