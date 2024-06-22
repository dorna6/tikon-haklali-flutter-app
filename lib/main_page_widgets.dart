//
// main page related widgets
//

// package imports
import 'package:flutter/material.dart';

// my imports
import 'theme_widgets.dart';
import 'main_image_widgets.dart';
import 'tikon_haklali.dart';

//
//
//
////////////////////////////////
/////// main page appbar ///////
////////////////////////////////

class MainPageAppBar {
  static AppBar appBar({
    required BuildContext context,
    required bool isDarkMode,
    required ThemeProvider themeProvider,
    required String appTitleText,
  }) {
    // define text style for the app bar
    final TextStyle textStyleAppbar = TextStyle(
      fontSize: 30,
      fontFamily: 'DavidLibre',
      fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.secondary,
    );

    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      surfaceTintColor: Theme.of(context).colorScheme.background,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 1),
              SizedBox(
                height: 50,
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
                    activeThumbImage:
                        AssetImage('assets/theme_sw_moon_white.png'),
                    inactiveThumbImage:
                        AssetImage('assets/theme_sw_sun_white.png'),
                    trackOutlineColor:
                        MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Color(0xFFffbf80);
                      }
                      return isDarkMode ? Color(0xFF004080) : Color(0xFFffd9b3);
                    }),
                  ),
                ),
              ),
            ],
          ),
          Spacer(), // Spacer to push text to the right
          Align(
            alignment: Alignment.centerRight,
            child: Text(appTitleText, style: textStyleAppbar),
          ),
        ],
      ),
    );
  }
}

//
//
//
////////////////////////////////
/////// main page body /////////
////////////////////////////////

class MainPageBody {
  static Scrollbar body({
    required BuildContext context,
    required bool isDarkMode,
  }) {
    final ScrollController _scrollController = ScrollController();

    return Scrollbar(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // spacer
              const SizedBox(height: 20),
              // main big image
              MainPageBigImage.bigImage(context: context),
              // spacer
              const SizedBox(height: 20),
              // tikon haklali text
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
                child: tikonHaklali.column(context: context),
              ),
            ],
          ),
          // children
        ),
      ),
    );
  }
}
