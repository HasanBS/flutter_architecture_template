import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'iapp_theme.dart';
import 'light/light_theme_interface.dart';

class AppThemeLight extends IAppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

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
    return const ColorScheme.light().copyWith(
      primary: colorSchemeLight.black,
      secondary: colorSchemeLight.deepRed,
      surface: colorSchemeLight.whiteTwo,
      background: colorSchemeLight.white,
      onBackground: colorSchemeLight.black,
      onSurface: colorSchemeLight.black,
      brightness: Brightness.light,
    );
  }

  TextTheme get textThemes {
    return ThemeData.light().textTheme.copyWith(
        headline1: textTheme.headline1.apply(color: _appColorScheme.secondary),
        headline2: textTheme.headline2,
        headline3:
            textTheme.headline3.apply(color: _appColorScheme.onBackground),
        bodyText1: textTheme.bodyText1,
        bodyText2: textTheme.bodyText2,
        subtitle1: textTheme.subtitle1);
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
