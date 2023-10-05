
import 'package:flutter/material.dart';
import 'package:flutter_quran_karim/res/colors/list_color.dart';

class DecorationContainer {
  static BoxDecoration boxDecorationDefault = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 75, 187, 119), // #08F4F9
        Color.fromARGB(255, 1, 65, 27)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
