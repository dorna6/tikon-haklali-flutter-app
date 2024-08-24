//
// all the data and widgets that related to the main image
//

import 'package:flutter/material.dart';
import 'dart:math';

//
//
//
///////////////////////
// main image widget //
///////////////////////

// generate random number for main image text
final random1 = Random();
final randomIndex_main_img_text = random1.nextInt(mainImgText.length);

final random2 = Random();
final randomIndex_main_img = random2.nextInt(mainImgPath.length);

class MainPageBigImage extends StatefulWidget {
  final BuildContext context;

  const MainPageBigImage({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  _MainPageBigImage createState() => _MainPageBigImage();
}

class _MainPageBigImage extends State<MainPageBigImage>
    with TickerProviderStateMixin {
  late final AnimationController _controller1;
  late final Animation<double> _animation1;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      duration: const Duration(seconds: 1, milliseconds: 0),
      vsync: this,
    );

    _animation1 = Tween(begin: 0.0, end: 1.0).animate(_controller1);

    Future.delayed(const Duration(milliseconds: 400), () {
      _controller1.forward();
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // define text style for the menu image
    final TextStyle textStyleMainImg = TextStyle(
        fontSize: 28,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w500,
        shadows: [
          Shadow(
            offset: Offset(0.0, 0.0),
            blurRadius: 15.0,
            color: Color(0xffffffff).withOpacity(0.3),
          ),
        ],
        color: Color(0xFFffffff).withOpacity(1),
    );

    final TextStyle textStyleMainImg_sub = TextStyle(
        fontSize: 20,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w400,
      color: Color(0xFFffffff).withOpacity(1),
    );

    // define shadow variabels
    final BoxShadow boxShadowMainImg = BoxShadow(
        color: Theme.of(context).colorScheme.shadow,
        spreadRadius: 2,
        blurRadius: 6);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        boxShadow: [boxShadowMainImg],
      ),
      // height: 450,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
              ),
              child: Image.asset(mainImgPath[randomIndex_main_img],
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Padding(
                padding: EdgeInsets.fromLTRB(30, 70, 30, 15),
                child: Align(
                  alignment: Alignment.center,
                  child: FadeTransition(
                    opacity: _animation1,
                    child: RichText(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: mainImgText[randomIndex_main_img_text][0],
                        style: textStyleMainImg.copyWith(height: 1.4),
                      ),
                    ),
                  ),
                ),
              ),
              //

              FadeTransition(
                opacity: _animation1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: mainImgText[randomIndex_main_img_text][1],
                        style: textStyleMainImg_sub,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//
//
//
/////////////////////
// main image data //
/////////////////////

// main image text list
const List<List<String>> mainImgText = [
  [
    'עַל יְדֵי אֱמֶת הָעוֹלָם נִשְׁמָר מִכָּל הֶזֵּקוֹת.',
    '(ספר המידות, אמת יג)'
  ],
  [
    'מִי שֶׁנּוֹתֵן צְדָקָה שְׂכָרוֹ שֶׁיִּזְכֶּה לֶאֱמֶת.',
    '(ספר המידות, אמת טו)'
  ],
  [
    'מִי שֶׁשּׁוֹמֵר אֶת עַצְמוֹ וְדוֹבֵר תָּמִיד אֱמֶת, כְּאִלּוּ עָשָׂה שָׁמַיִם וָאָרֶץ וְאֶת הַיָּם וְאֶת כָּל אֲשֶׁר בָּם.',
    '(ספר המידות, אמת מט)'
  ],
  [
    'הַכְנָסַת אוֹרְחִים מְזַכָּה אֶת הָאִשָּׁה לְבָנִים.',
    '(ספר המידות, הכנסת אורחים ג)'
  ],
  [
    'גְּדוֹלָה הַכְנָסַת אוֹרְחִים מֵהַשְׁכָּמַת בֵּית הַמִּדְרָשׁ וְהַקְבָּלַת פְּנֵי שְׁכִינָה.',
    '(ספר המידות, הכנסת אורחים ו)'
  ],
  [
    'עַל יְדֵי אַהֲבַת הַשֵּׁם יִתְבָּרַךְ נִשְׁמָר הַנֶּפֶשׁ מִכָּל פְּגָעִים רָעִים.',
    '(ספר המידות, אהבה ג)'
  ],
  [
    'מִי שֶׁמִּתְפַּלֵּל עַל יִשְׂרָאֵל בִּמְסִירַת נֶפֶשׁ, הַכֹּל אוֹהֲבִין אוֹתוֹ.',
    '(ספר המידות, אהבה ה)'
  ],
  [
    'כְּשֶׁתְּחַזֵּק אֶת הָאָדָם בַּעֲבוֹדַת הַשֵּׁם יִתְבָּרַךְ, הוּא יֹאהַב אוֹתְךָ.',
    '(ספר המידות, אהבה ז)'
  ],
  [
    'עַל יְדֵי אֲמִירַת הַלֵּל בְּקוֹל גָּדוֹל, זוֹכִים לְאַהֲבַת הַשֵּׁם יִתְבָּרַךְ.',
    '(ספר המידות, אהבה ח)'
  ],
  ['עַל יְדֵי עֲנָוָה תִּזְכֶּה לֶאֱמוּנָה.', '(ספר המידות, אמונה ב)'],
  [
    'בִּרְאוֹתְךָ שִׁנּוּי מַעֲשֶׂה, אַל תֹּאמַר מִקְרֶה הוּא, אֶלָּא תַּאֲמִין כִּי זֶה הַשְׁגָּחַת הַשֵּׁם יִתְבָּרַךְ.',
    '(ספר המידות, אמונה ג)'
  ],
  [
    'כְּשֶׁתִּסְתַּכֵּל בַּשָּׁמַיִם כְּשֶׁהֵם זַכִּים וּבְהִירִים, תִּזְכֶּה לֶאֱמוּנַת חֲכָמִים.',
    '(ספר המידות, אמונה יד)'
  ],
  [
    'עַל יְדֵי אֱמוּנָה הַקָּדוֹשׁ בָּרוּךְ הוּא יִסְלַח לְךָ עַל כָּל עֲווֹנוֹתֶיךָ.',
    '(ספר המידות, אמונה לג)'
  ],
  [
    'עַל יְדֵי אַחְדוּת שֶׁיִּהְיֶה בְּיִשְׂרָאֵל, יָבוֹא מָשִׁיחַ.',
    '(ספר המידות, אמונה נ)'
  ],
  [
    'עַל יְדֵי תּוֹרָה בָּא לֶאֱמוּנָה, וְעַל יְדֵי אֱמוּנָה בָּא לְקִדּוּשׁ הַשֵּׁם.',
    '(ספר המידות, אמונה ב טז)'
  ],
  [
    'שֻׁלְחָנוֹ שֶׁל אָדָם מְטַהֵר לוֹ מִכָּל עֲווֹנוֹתָיו.',
    '(ספר המידות, אכילה ב)'
  ],
  [
    'מִי שֶׁשּׁוֹמֵר אֶת עַצְמוֹ מִכַּעַס, שׂוֹנְאָיו אֵינָם שׁוֹלְטִים עָלָיו.',
    '(ספר המידות, כעס א)'
  ],
  [
    'הַקָּדוֹשׁ בָּרוּךְ הוּא אוֹהֵב לְמִי שֶׁאֵינוֹ כּוֹעֵס וּלְמִי שֶׁאֵינוֹ מַעֲמִיד עַל מִדּוֹתָיו.',
    '(ספר המידות, כעס ו)'
  ],
  [
    'אָדָם שֶׁאֵין מִתְלוֹנֵן עַל הַבְּרִיּוֹת, יֵהֵא יָקָר בְּעֵינֵי הַבְּרִיּוֹת.',
    '(ספר המידות, כעס יח)'
  ],
];

// main image list
const List<String> mainImgPath = [
  'assets/main_img_1.png',
  'assets/main_img_2.png',
  'assets/main_img_3.png',
  'assets/main_img_4.png',
  'assets/main_img_5.png',
  'assets/main_img_6.png',
  'assets/main_img_7.png',
  'assets/main_img_8.png',
  'assets/main_img_9.png',
  'assets/main_img_10.png',
  'assets/main_img_11.png',
  'assets/main_img_12.png',
  'assets/main_img_13.png',
  'assets/main_img_14.png',
  'assets/main_img_15.png',
  'assets/main_img_16.png',
  'assets/main_img_17.png',
  'assets/main_img_18.png',
  'assets/main_img_19.png',
  'assets/main_img_20.png',
  'assets/main_img_21.png',
  'assets/main_img_22.png',
  'assets/main_img_23.png',
  'assets/main_img_24.png',
  'assets/main_img_25.png',
];
