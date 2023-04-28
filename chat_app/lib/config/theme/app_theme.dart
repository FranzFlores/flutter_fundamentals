import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            'El color debe tener un valor entre 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
