
import 'package:flutter/material.dart';

class DecorationContainer {
  static BoxDecoration boxDecorationDefault = const BoxDecoration(
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
