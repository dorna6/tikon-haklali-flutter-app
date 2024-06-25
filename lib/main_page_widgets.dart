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
  static Row row({
    required BuildContext context,
    required bool isDarkMode,
    required ThemeProvider themeProvider,
    required String appTitleText,
  }) {
    return Row(
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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background.withOpacity(0.9),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Text(
              appTitleText,
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'DavidLibre',
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
      ],
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
    required ThemeProvider themeProvider,
  }) {
    final ScrollController _scrollController = ScrollController();
    return Scrollbar(
      controller: _scrollController,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shadowColor: Colors.black87,
            elevation: 2,
            forceElevated: true,
            pinned: true,
            expandedHeight: 400.0,
            backgroundColor: Theme.of(context).colorScheme.background,
            title: MainPageAppBar.row(
                context: context,
                isDarkMode: isDarkMode,
                themeProvider: themeProvider,
                appTitleText: 'התיקון הכללי'),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              centerTitle: false,
              background: MainPageBigImage.bigImage(context: context),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

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
      ),
    );
  }
}
