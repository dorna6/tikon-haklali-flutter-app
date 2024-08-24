//
// manage all the related app theme widgets,
// including the themes variabels and there provider.
//

import 'package:flutter/material.dart';

//
//
//
/////////////////////
// light theme var //
/////////////////////

class LightTheme {
  static final ThemeData theme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: const Color(0xFFf6f6f8), // background color
      primary: const Color(0xFFffffff), // menu line color
      secondary: const Color(0xFF424242), // text color
      onSecondary: const Color(0xFF8a8a8a), // lighter text color
      shadow: const Color(0xFF5e606b), // shadow
    ),
  );
}
//
//
//
////////////////////
// dark theme var //
////////////////////

class DarkTheme {
  static final ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: const Color(0xFF202020),
      primary: const Color(0xFF2B2B2B),
      secondary: const Color(0xFFffffff),
      onSecondary: const Color(0xFF9e9e9e),
      shadow: const Color(0xFF2B2B2B),
    ),
  );
}

//
//
//
////////////////////
// theme provider //
////////////////////

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeDataStyle = LightTheme.theme;

  ThemeData get themeDataStyle => _themeDataStyle;

  set themeDataStyle(ThemeData themeData) {
    _themeDataStyle = themeData;
    notifyListeners();
  }

  void changeTheme() {
    if (_themeDataStyle == LightTheme.theme) {
      themeDataStyle = DarkTheme.theme;
    } else {
      themeDataStyle = LightTheme.theme;
    }
  }

  bool getCurrentTheme() {
    return _themeDataStyle == DarkTheme.theme;
  }
}
