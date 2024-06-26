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

    final TextStyle textStyle1 = TextStyle(
      fontSize: 14,
      fontFamily: 'DavidLibre',
      fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.secondary,
    );

    final TextStyle textStyle2 = TextStyle(
      fontSize: 18,
      fontFamily: 'DavidLibre',
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.secondary,
    );

    // define shadow variabels
    final BoxShadow boxShadowMenuLine = BoxShadow(
        color: Color(0xFFc4c4c4),
        spreadRadius: 0,
        blurRadius: 4);

    return Scrollbar(
      controller: _scrollController,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shadowColor: Colors.black87,
            elevation: 5,
            // forceElevated: true,
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
              background: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: MainPageBigImage.bigImage(context: context),
              ),
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




            ///////////////////////////////////////////////



            // Spacer between elements
            SizedBox(height: 15, width: MediaQuery.of(context).size.width),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.background,
                  boxShadow: [boxShadowMenuLine]),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [

                        Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(15),
                          //     color: Theme.of(context).colorScheme.primary,
                          //     boxShadow: [boxShadowMenuLine]),
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text('לרפואת', style: textStyle2),
                              const SizedBox(height: 5),
                              Text('הרב אופיר אור בן תמר שליט"א', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                              Text('הרב אליעזר ברלנד בן עטיה שליט"א', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                              Text('רועי טמסוט בן חוה', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                              Text('דור נחמיאס בן אסתר', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),

                        const SizedBox(height: 15),

                        Container(
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(15),
                        //       color: Theme.of(context).colorScheme.primary,
                        //       boxShadow: [boxShadowMenuLine]),
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text('לעילוי נשמת',
                                  style: textStyle2),
                              const SizedBox(height: 5),
                              Text('מכלוף בן ברידגט',
                                  style: textStyle1),
                              Text('משה בן יעקב',
                                  style: textStyle1),
                              Text('יעקב בן משה',
                                  style: textStyle1),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Column(
                      children: [

                        Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(15),
                          //     color: Theme.of(context).colorScheme.primary,
                          //     boxShadow: [boxShadowMenuLine]),
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text('להצלחת', style: textStyle2),
                              const SizedBox(height: 5),
                              Text('הרב אופיר אור בן תמר שליט"א', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                              Text('הרב אליעזר ברלנד בן עטיה שליט"א', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                              Text('רועי טמסוט בן חוה', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                              Text('דור נחמיאס בן אסתר', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                              Text('מור נחמיאס בן נורית', style: textStyle1,
                                textAlign: TextAlign.center,),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),

                        const SizedBox(height: 15),

                        Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(15),
                          //     color: Theme.of(context).colorScheme.primary,
                          //     boxShadow: [boxShadowMenuLine]),
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text('לזיוג הגון',
                                  style: textStyle2),
                              const SizedBox(height: 5),
                              Text('מכלוף בן ברידגט',
                                  style: textStyle1),
                              Text('משה בן יעקב',
                                  style: textStyle1),
                              Text('יעקב בן משה',
                                  style: textStyle1),
                              Text('מרים בת חוה',
                                  style: textStyle1),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),

                    SizedBox(height: 30, width: MediaQuery.of(context).size.width),


            ////////////////////////////////////////////////



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
