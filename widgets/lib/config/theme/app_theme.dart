import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepOrange
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}) : 
  assert(selectedColor >= 0, 'El color debe ser mayor a cero'),
  assert(selectedColor < colorList.length, 'El color debe estar entre 0 y ${colorList.length}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false 
    )
  );
}
