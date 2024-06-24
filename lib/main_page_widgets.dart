//
// main page related widgets
//

// package imports
import 'package:flutter/material.dart';

// my imports
import 'theme_widgets.dart';
import 'main_image_widgets.dart';
import 'dark_mode_switch.dart';
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
        children: [
          SizedBox(width: 1),
          DarkModeSwitch.sw(
            hight: 50,
            context: context,
            isDarkMode: isDarkMode,
            themeProvider: themeProvider,
          ),
          Spacer(),
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
  static CustomScrollView body({
    required BuildContext context,
    required bool isDarkMode,
    required ThemeProvider themeProvider,
  }) {
    final ScrollController _scrollController = ScrollController();

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 400.0,
          backgroundColor: Theme.of(context).colorScheme.background,
          flexibleSpace: FlexibleSpaceBar(
            background: MainPageBigImage.bigImage(context: context),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // spacer
                  const SizedBox(height: 20),
                  // tikon haklali text
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 0.0),
                    child: tikonHaklali.column(context: context),
                  ),
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
