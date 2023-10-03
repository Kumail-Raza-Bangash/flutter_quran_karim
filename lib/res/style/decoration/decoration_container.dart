
import 'package:flutter/material.dart';
import 'package:flutter_quran_karim/res/colors/list_color.dart';

class DecorationContainer {
  static BoxDecoration boxDecorationDefault = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        ListColor.gradientTopColor, // #08F4F9
        ListColor.gradientBottomColor
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
