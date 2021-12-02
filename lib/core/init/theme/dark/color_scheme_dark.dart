import 'package:flutter/material.dart';

class ColorSchemeDark {
  static ColorSchemeDark? _instace;

  static ColorSchemeDark get instance {
    return _instace ??= ColorSchemeDark._init();
  }

  ColorSchemeDark._init();

  final white = const Color(0xffffffff);
  final greyishBrown = const Color(0xff575757);
  final charcoalGrey = const Color(0xff313541);
  final black = const Color(0xff000000);
}
