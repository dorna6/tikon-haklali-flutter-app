import 'package:flutter/material.dart';

// my imports
import 'theme_widgets.dart';

//
//
//
////////////////////////////////
/////// dark mod switch ///////
////////////////////////////////

class DarkModeSwitch {
  static SizedBox sw({
    required double hight,
    required BuildContext context,
    required bool isDarkMode,
    required ThemeProvider themeProvider,
  }) {
    return SizedBox(
      height: hight,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          value: isDarkMode ? true : false,
          onChanged: (isOn) {
            themeProvider.changeTheme();
          },
          activeColor: Color(0xFF0066cc),
          activeTrackColor: Color(0xFF004080),
          inactiveThumbColor: Color(0xFFffa64d),
          inactiveTrackColor: Color(0xFFffd9b3),
          activeThumbImage: AssetImage('assets/theme_sw_moon_white.png'),
          inactiveThumbImage: AssetImage('assets/theme_sw_sun_white.png'),
          trackOutlineColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Color(0xFFffbf80);
            }
            return isDarkMode ? Color(0xFF004080) : Color(0xFFffd9b3);
          }),
        ),
      ),
    );
  }
}
