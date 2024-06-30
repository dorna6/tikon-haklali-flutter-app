//
// main page related widgets
//

// package imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my imports
import 'theme_widgets.dart';
import 'main_image_widgets.dart';
import 'dark_mode_switch.dart';
import 'blessing_widget.dart';
import 'custom_text_widget.dart';

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
              'התיקון הכללי',
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
  static Scaffold body({
    required BuildContext context,
    required bool isDarkMode,
    required ThemeProvider themeProvider,
  }) {
 
    // text styles
    final TextStyle styl1 = TextStyle(
        fontSize: 28,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w400,
        color: Colors.white,
        height: 1.3);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/aa.gif",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //
              //
              Padding(
                padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
                child: CustomRichText(
                  textAlign: TextAlign.center,
                  alignment: Alignment.center,
                  textSpan: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "וְדַרְכִּי, ",
                        style: styl1,
                      ),
                      TextSpan(
                        text:
                            "כְּשֶׁבָּא הַיּוֹם אֲנִי מוֹסֵר כָּל הַתְּנוּעוֹת שֶׁלִּי וְשֶׁל בָּנַי וְהַתְּלוּיִים בִּי עַל ",
                        style: styl1,
                      ),
                      TextSpan(
                        text: "הַשֵּׁם יִתְבָּרַךְ ",
                        style: styl1,
                      ),
                      TextSpan(
                        text:
                            "שֶׁיִּהְיֶה הַכֹּל כִּרְצוֹנוֹ יִתְבָּרַךְ, וְזֶה טוֹב מְאֹד.",
                        style: styl1,
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "(שיחות הר”ן, שיחה א)",
                  textAlign: TextAlign.center,
                  style: styl1.copyWith(fontSize: 18),
                ),
              ),
              //
              //
              Spacer(),
              //
              //
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Text(
                  "התיקון הכללי",
                  textAlign: TextAlign.center,
                  style: styl1.copyWith(fontSize: 50),
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
                child: TextButton(
                  onPressed: () {
                    // Handle button press action
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                  child: Text(
                    "למעבר לקריאה",
                    style: styl1.copyWith(fontSize: 20),
                  ),
                ),
              ),

              //
              //
            ],
          ),
        ],
      ),
    );
  }
}
