import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instace;

  static ColorSchemeLight get instance {
    return _instace ??= ColorSchemeLight._init();
  }

  ColorSchemeLight._init();

  final white = const Color(0xffffffff);
  final whiteTwo = const Color(0xffededed);
  final deepRed = const Color(0xffa90000);
  final black = const Color(0xff000000);
}
