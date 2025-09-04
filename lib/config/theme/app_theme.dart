import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.purple,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
  Colors.pink,
];


class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0,'selectedColor must be greater than 0'),
      assert(selectedColor < colorList.length,'selectedColor must be smaller than ${colorList.length-1}');


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
  );

}