import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dark/dark_theme_interface.dart';
import 'iapp_theme.dart';

class AppThemeDark extends IAppTheme with IDarkTheme {
  static AppThemeDark? _instance;
  static AppThemeDark get instance {
    return _instance ??= AppThemeDark._init();
  }

  AppThemeDark._init();

  @override
  ThemeData get theme => ThemeData(
        elevatedButtonTheme: elevatedButtonTheme,
        textSelectionTheme: textSelectionTheme,
        indicatorColor: _appColorScheme.secondary,
        colorScheme: _appColorScheme,
        textTheme: textThemes,
        appBarTheme: appBarTheme,
        scaffoldBackgroundColor: _appColorScheme.background,
      );

  ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: _appColorScheme.background,
        padding: EdgeInsets.zero,
        elevation: 0,
      ),
    );
  }

  TextSelectionThemeData get textSelectionTheme {
    return TextSelectionThemeData(
        selectionHandleColor: _appColorScheme.secondary.withOpacity(0.9),
        cursorColor: _appColorScheme.secondary,
        selectionColor: _appColorScheme.secondary.withOpacity(0.2));
  }

  ColorScheme get _appColorScheme {
    return const ColorScheme.dark().copyWith(
      primary: colorSchemeDark.white,
      secondary: colorSchemeDark.black,
      surface: colorSchemeDark.charcoalGrey,
      background: colorSchemeDark.greyishBrown,
      onBackground: colorSchemeDark.white,
      onSurface: colorSchemeDark.white,
      brightness: Brightness.dark,
    );
  }

  TextTheme get textThemes {
    return ThemeData.dark().textTheme.copyWith(
          headline1: textTheme.headline1,
          headline2: textTheme.headline2,
          headline3: textTheme.headline3,
          bodyText1: textTheme.bodyText1,
          bodyText2: textTheme.bodyText2,
          subtitle1: textTheme.subtitle1,
        );
  }

  AppBarTheme get appBarTheme {
    return ThemeData.light().appBarTheme.copyWith(
          brightness: Brightness.light,
          backwardsCompatibility: false,
          backgroundColor: _appColorScheme.surface,
          titleTextStyle:
              textTheme.headline2.apply(color: _appColorScheme.onSurface),
          elevation: 10,
          foregroundColor: _appColorScheme.onSurface,
          iconTheme: IconThemeData(
            color: _appColorScheme.onSurface,
          ),
        );
  }
}
