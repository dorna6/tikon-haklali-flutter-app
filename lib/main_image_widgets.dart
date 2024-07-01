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

    Future.delayed(const Duration(milliseconds: 600), () {
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
        fontWeight: FontWeight.w400,
        color: Color(0xFFffffff));

    final TextStyle textStyleMainImg_sub = TextStyle(
        fontSize: 20,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w400,
        color: Color(0xFFffffff));

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
    'מִי שֶׁאֵינוֹ אוֹמֵר שֶׁקֶר, הַקָּדוֹשׁ בָּרוּךְ הוּא מוֹשִׁיעַ לוֹ בְּעֵת צָרָתוֹ גַּם בָּנִים יִהְיוּ לוֹ.',
    '(ספר המידות, אהבה יג)'
  ],
  [
    ' עַל יְדֵי אֱמֶת נִצּוֹל מִלָּשׁוֹן הָרָע גַּם תְּפִלָּתוֹ נִתְקַבֵּל. גַּם כְּשֶׁדָּנִים אוֹתוֹ לְמַעְלָה, דָּנִים אוֹתוֹ לְפִי זְכֻיּוֹת שֶׁלּוֹ.',
    '(ספר המידות, אבדה ז)'
  ],
  [
    'הַמְאָרֵחַ תַּלְמִיד חָכָם בְּתוֹךְ בֵּיתוֹ מַעֲלֶה עָלָיו הַכָּתוּב כְּאִלּוּ הִקְרִיב תְּמִידִין',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'גְּדוֹלָה הַכְנָסַת אוֹרְחִים מֵהַשְׁכָּמַת בֵּית הַמִּדְרָשׁ וְהַקְבָּלַת פְּנֵי שְׁכִינָה',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'עַל יְדֵי אַהֲבַת הַשֵּׁם יִתְבָּרַךְ נִשְׁמָר הַנֶּפֶשׁ מִכָּל פְּגָעִים רָעִים',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'כְּשֶׁתָּשׁוּב בִּתְחִלָּה עַל עֲווֹנוֹתֶיךָ, תּוּכַל לָבוֹא לְאַהֲבַת הַשֵּׁם יִתְבָּרַךְ',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'מִי שֶׁמִּתְפַּלֵּל עַל יִשְׂרָאֵל בִּמְסִירַת נֶפֶשׁ, הַכֹּל אוֹהֲבִין אוֹתוֹ',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'כְּשֶׁתְּחַזֵּק אֶת הָאָדָם בַּעֲבוֹדַת הַשֵּׁם יִתְבָּרַךְ, הוּא יֹאהַב אוֹתְךָ',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'עַל יְדֵי אֲמִירַת הַלֵּל בְּקוֹל גָּדוֹל, זוֹכִים לְאַהֲבַת הַשֵּׁם יִתְבָּרַךְ',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'עַל יְדֵי אֲמִירַת הַלֵּל בְּקוֹל גָּדוֹל, זוֹכִים לְאַהֲבַת הַשֵּׁם יִתְבָּרַךְ',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'צָרִיךְ לְהַאֲמִין בְּהַשֵׁם יִתְבָּרַךְ בְּדֶרֶךְ אֱמוּנָה וְלֹא בְּדֶרֶךְ מוֹפֵת',
    '(ספר המידות, אהבה יג)'
  ],
  [
    'בִּרְאוֹתְךָ שִׁנּוּי מַעֲשֶׂה, אַל תֹּאמַר מִקְרֶה הוּא, אֶלָּא תַּאֲמִין כִּי זֶה הַשְׁגָּחַת הַשֵּׁם יִתְבָּרַךְ',
    '(ספר המידות, אהבה יג)'
  ]

  // 'יֵשׁ דְּבָרִים שֶׁהֵם מְבִיאִים הֶזֵּק גָּדוֹל לָעוֹלָם. וְהַדָּבָר קָשֶׁה: לָמָּה נִבְרְאוּ? תֵּדַע, שֶׁבְּוַדַּאי יֵשׁ בָּהֶם צַד אֶחָד לְטוֹבָה',
  // 'מִי שֶׁנֶּאֱבַד אֱמוּנָתוֹ מִמֶּנּוּ, יֵלֵךְ עַל קִבְרֵי יִשְׂרָאֵל וִיסַפֵּר הַחֲסָדִים, שֶׁעָשָׂה לוֹ הַקָּדוֹשׁ בָּרוּךְ הוּא',
  // 'עַל יְדֵי אֱמוּנָה הָאָדָם חָבִיב לְהַשֵּׁם יִתְבָּרַךְ כְּאִשָּׁה לְבַעְלָהּ',
  // 'כְּשֶׁתִּסְתַּכֵּל בַּשָּׁמַיִם כְּשֶׁהֵם זַכִּים וּבְהִירִים, תִּזְכֶּה לֶאֱמוּנַת חֲכָמִים',
  // 'כְּשֶׁנּוֹפֵל אֵיזֶה קֻשְׁיָא עַל הַשֵּׁם יִתְבָּרַךְ, אֲזַי תִּשְׁתֹּק, וְעַל יְדֵי הַשְּׁתִיקָה מַחְשְׁבוֹתֶיךָ בְּעַצְמָם יָשִׁיבוּ לְךָ תֵּרוּץ עַל קֻשְׁיוֹתֶיךָ',
  // 'כְּשֶׁמְּחָרְפִין אוֹתְךָ, וְאַתָּה שׁוֹתֵק, תִּזְכֶּה לְהָבִין תֵּרוּץ עַל קֻשְׁיוֹתֶיךָ וְתִזְכֶּה לְרוּחַ בִּינָה',
  // 'עַל יְדֵי אֱמֶת הַקָּדוֹשׁ בָּרוּךְ הוּא פּוֹדֶה אוֹתְךָ מִכָּל הַצָּרוֹת',
  // 'עַל יְדֵי תּוֹרָה בָּא לֶאֱמוּנָה, וְעַל יְדֵי אֱמוּנָה בָּא לְקִדּוּשׁ הַשֵּׁם',
  // 'עַל יְדֵי יְשִׁיבַת אֶרֶץ יִשְׂרָאֵל מַשִּׂיגִין הַשְׁגָּחַת הַשֵּׁם יִתְבָּרַךְ עַל הָעוֹלָם',
  // 'עַל יְדֵי הִשְׁתּוֹקְקוּת שֶּׁאָדָם מִשְׁתּוֹקֵק לְבִיאַת אֶרֶץ יִשְׂרָאֵל, עַל יְדֵי זֶה נִשְׁפָּע פַּרְנָסָה גְּדוֹלָה',
  // 'עַל יְדֵי שִׂמְחַת יוֹם טוֹב וְעַל יְדֵי הֲנָחַת תְּפִלִּין כָּרָאוּי, תֵּלֵד אִשְׁתּוֹ בָּנִים זְכָרִים',
  // 'כָּל הָרוֹדֵף צְדָקָה, זוֹכֶה לְבָנִים בַּעֲלֵי עשֶׁר, בַּעֲלֵי חָכְמָה, בַּעֲלֵי אַגָּדָה',
  // 'הָעוֹסֵק בְּתוֹרָה וּבִגְמִילוּת חֲסָדִים, זוֹכֶה לְהַרְבֵּה בָּנִים',
  // 'מִי שֶׁמְּקַבֵּל אֶת הַיִּסּוּרִים בְּאַהֲבָה, זוֹכֶה לְזֶרַע שֶׁיַּאֲרִיכוּ יְמֵיהֶם',
  // 'מִי שֶׁמְּשַׂמֵּחַ חָתָן וְכַלָּה, יִזְכֶּה שֶׁתֵּלֶד אִשְׁתּוֹ זְכָרִים',
  // 'עַל יְדֵי כִּבּוּד אָב תִּזְכֶּה לְבָנִים זְכָרִים',
  // 'מִי שֶׁרוֹדֵף שָׁלוֹם עַל יְדֵי זֶה יִזְכֶּה לִרְאוֹת בָּנִים לְבָנָיו',
  // 'כְּשֶׁהַבַּיִת מְזֻמָּן לִבְרָכָה, אֲזַי כְּשֶׁהַצַּדִּיק בָּא לַבַּיִת הַזֶּה גַּם הַבְּרָכָה בָּאָה',
  // 'טוֹב לְבַטֵּל תּוֹרָה מִלְּבַיֵּשׁ בֶּן יִשְׂרָאֵל',
  // 'כְּשֶׁבָּא עַל אָדָם אֵיזֶה בּוּשָׁה, יְצַפֶּה לִישׁוּעָה',
  // 'עַל יְדֵי צְדָקָה לְשֵׁם שָׁמַיִם תָּבֹא לְמִדַּת בּוּשָׁה',
  // 'נֹחַ לוֹ לָאָדָם שֶׁיַּפִּיל עַצְמוֹ לְתוֹךְ כִּבְשַׁן הָאֵשׁ וְאַל יַלְבִּין פְּנֵי חֲבֵרוֹ בָּרַבִּים',
  // 'עַל יְדֵי אֱמוּנָה יָבֹא לְבִטָּחוֹן',
  // 'עַל יְדֵי הַבִּטָּחוֹן הָאָדָם נִתְקָרֵב לְהַשֵּׁם יִתְבָּרַךְ',
  // 'מִי שֶׁמְּקָרֵב אֶת הָרְחוֹקִים לַעֲבוֹדַת הַשֵּׁם יִתְבָּרַךְ הַבְּרָכוֹת מְסוּרִים בְּיָדוֹ',
  // 'סְגֻלָּה לְגַאֲוָה שֶׁיִּסְתַּכֵּל עַל הַשָּׁמַיִם',
  // 'הַכּוֹבַע שֶׁל צַדִּיק סְגֻלָּה לְהָסִיר הַגַּאֲוָה',
  // 'כְּשֶׁאָדָם רוֹצֶה לֵידַע אֵיךְ לְהִתְנַהֵג בְּאֵיזֶה דָּבָר, יִפְתַּח סֵפֶר וְיָבִין אֵיךְ לְהִתְנַהֵג',
  // 'מִי שֶׁהוֹלֵךְ בִּתְמִימוּת, נַעֲשֶׂה מַשְׂכִּיל',
  // 'מִי שֶׁיֵּשׁ לוֹ אֱמוּנָה, זוֹכֶה אַחַר כָּךְ לַעֲבֹד אֶת הַשֵּׁם בְּדַעַת גָּדוֹל',
  // 'הַקּוֹל הַיּוֹצֵא מִבַּר דַּעַת שֶׁבִּקְדֻשָּׁה מְסֻגָּל לְיִרְאָה',
  // 'הַמּוֹכִיחַ אֶת חֲבֵרוֹ לְשֵׁם שָׁמַיִם, מוֹשְׁכִין עָלָיו חוּט שֶׁל חֶסֶד',
  // 'עַל יְדֵי טְבִילַת מִקְוֶה נִתְבַּטֵּל הַצָּרוֹת וִישׁוּעָה בָּאָה',
  // 'עַל יְדֵי בִּטָּחוֹן נִמְתָּק הַדִּין וְנִמְשָׁךְ הַחֶסֶד',
  // 'עַל יְדֵי צְדָקָה מְהַפֵּךְ הַמִּשְׁפָּט וְהַדִּין לְמִדַּת חֶסֶד',
  // 'עַל יְדֵי צְדָקָה שֶּׁנּוֹתְנִין לְאָדָם הָגוּן, תִּזְכֶּה לְהַמְשִׁיךְ חֶסֶד גַּם לְאוֹהַבְךָ',
  // 'עַל יְדֵי שֶׁבָּא אֶל הַצַּדִּיק, בִּיאָתוֹ בְּעַצְמָהּ יְכוֹלָה לְהַמְתִּיק הַדִּינִין',
  // 'הַשִּׂיחָה שֶׁאָדָם מֵשִׂיחַ בֵּינוֹ לְבֵין קוֹנוֹ, הַשִּׂיחָה הַזֹּאת נַעֲשֵׂית אַחַר כָּךְ גְּאֻלָּה וִישׁוּעָה לְבָנָיו',
  // 'מַחֲשָׁבוֹת טוֹבוֹת בָּאִים עַל יְדֵי וִדּוּי, שֶׁמִּתְוַדִּים לִפְנֵי הַתַּלְמִיד חָכָם',
  // 'מִי שֶׁמְּסַפֵּר מַעֲשִׂיּוֹת שֶׁאֵרְעוּ לַצַּדִּיקִים, עַל יְדֵי זֶה נִמְשָׁכִין לוֹ מַחֲשָׁבוֹת טוֹבוֹת',
  // 'אֵין הַבְּרָכָה מְצוּיָה אֶלָּא בְּדָבָר הַסָּמוּי מִן הָעַיִן',
  // 'עֵסֶק הַתּוֹרָה הִיא סְגֻלָּה לְהַצְלָחָה',
  // 'מִי שֶׁאֵינוֹ מְדַבֵּר דְּבָרִים בְּטֵלִים, מַצְלִיחַ בְּכָל מַעֲשָׂיו',
  // 'עַל יְדֵי אֱמוּנַת חֲכָמִים בָּא הַצְלָחָה',
  // 'לְהַצְלָחָה תִּשְׁמַע כְּשֶׁהַצַּדִּיק אוֹמֵר יִחוּד הַשֵּׁם, הַיְנוּ שְׁמַע יִשְׂרָאֵל',
  // 'מִי שֶׁהוּא שָׂמֵחַ תָּמִיד, עַל יְדֵי זֶה הוּא מַצְלִיחַ',
  // 'עַל יְדֵי הִתְבּוֹדְדוּת בָּא יְשׁוּעָה',
  // 'מִי שֶׁצָּרִיךְ לְאֵיזֶה יְשׁוּעָה, יְשַׂמַּח אֶת הַצַּדִּיק',
  // 'עַל יְדֵי בִּטָּחוֹן תִּזְכֶּה לְהָבִין, שֶׁיְּשׁוּעָתְךָ מֵאֵת הַקָּדוֹשׁ בָּרוּךְ הוּא וְלֹא מֵאָדָם',
  // 'מִי שֶׁמִּתְפַּלֵּל בְּשִׂמְחָה, יִזְכֶּה לִשְׂמֹחַ בִּישׁוּעָתוֹ',
  // 'עַל יְדֵי שֶׁמִּתְפַּלֵּל בְּכֹחַ וּמַכְנִיס כָּל כֹּחוֹ בְּאוֹתִיּוֹת הַתְּפִלָּה, עַל יְדֵי זֶה זוֹכִים לֶאֱמוּנָה',
  // 'עִקַּר קִיּוּם הָאֱמוּנָה הִיא רַק עַל יְדֵי שְׁמִירַת הַבְּרִית',
  // 'עִקַּר שְׁלֵמוּת הָאֱמוּנָה הִיא עַל יְדֵי שֶׁמְּקָרְבִין הָרְחוֹקִים לְהַשֵּׁם יִתְבָּרַךְ',
  // 'הַכְּלָל הוּא, שֶׁכָּל מַה שֶּׁאָנוּ עוֹשִׂין, הֵן תְּפִלָּה, הֵן לִמּוּד תּוֹרָה וַעֲשִׂיַּת מִצְווֹת, הַכֹּל הוּא כְּדֵי שֶׁיִּתְגַּלֶּה אֱמוּנָתוֹ וּמַלְכוּתוֹ יִתְבָּרַךְ',
  // 'וְצָרִיךְ לִזָּהֵר מְאֹד שֶׁלֹּא לְהַבִּיט כְּלָל בַּסְּפָרִים הַמְדַבְּרִים מֵחֲקִירוֹת, כִּי הֵם מַזִּיקִים וּפוֹגְמִין מְאֹד אֶת הָאֱמוּנָה הַקְּדוֹשָׁה',
  // 'עַל יְדֵי שִׂמְחַת תּוֹרָה וּמִצְוָה עַד שֶׁמְּרַקֵּד מֵחֲמַת שִׂמְחָה, עַל יְדֵי זֶה נִתְעַלֶּה הָאֱמוּנָה הַקְּדוֹשָׁה',
  // 'צְרִיכִין לְהִתְפַּלֵּל וּלְבַקֵּשׁ מְאֹד מֵהַשֵּׁם יִתְבָּרַךְ לִזְכּוֹת לְשִׁפְלוּת וַעֲנָוָה בֶּאֱמֶת, כִּי אֵין אָנוּ יוֹדְעִין כְּלָל מַהוּ עֲנָוָה וְשִׁפְלוּת אֲמִתִּי',
  // 'כִּי זֶה עִקַּר כֹּחַ הַבְּחִירָה, מַה שֶּׁאֵין יוֹדְעִים הַשֵּׂכֶל שֶׁל הַיְדִיעָה וְהַבְּחִירָה',
  // 'תִּקּוּן הַדִּבּוּר הוּא עַל יְדֵי שֶׁבַח הַצַּדִּיקִים, כִּי עַל יְדֵי שֶׁבַח הַצַּדִּיקִים מְרִימִין אֶת הַדַּעַת',
  // 'עִקַּר קַבָּלַת עֹל מַלְכוּת שָׁמַיִם הוּא עַל יְדֵי שֶׁמַּשְׁלִיכִין וּמְבַטְּלִין כָּל הַחָכְמוֹת',
  // 'צָרִיךְ כָּל אֶחָד לְהַשְׁלִיךְ כָּל הַחָכְמוֹת וְלַעֲבֹד אֶת הַשֵּׁם יִתְבָּרַךְ בִּפְשִׁיטוּת וּבִתְמִימוּת',
  // 'כְּשֶׁאָדָם הוֹלֵךְ אַחַר שִׂכְלוֹ וְחָכְמָתוֹ, יוּכַל לִפֹּל בְּטָעוּתִים וּמִכְשׁוֹלוֹת רַבִּים, וְלָבוֹא לִידֵי רָעוֹת גְּדוֹלוֹת חַס וְשָׁלוֹם',
  // 'עִקַּר הַתְּשׁוּבָה כְּשֶׁיִּשְׁמַע בִּזְיוֹנוֹ, יִדֹּם וְיִשְׁתֹּק',
  // ' וַאֲפִלּוּ אִם יוֹדֵעַ הָאָדָם בְּעַצְמוֹ שֶׁעָשָׂה תְּשׁוּבָה שְׁלֵמָה, אַף עַל פִּי כֵן צָרִיךְ לַעֲשׂוֹת תְּשׁוּבָה עַל תְּשׁוּבָה הָרִאשׁוֹנָה',
  // 'הַתְּשׁוּבָה צָרִיךְ לִהְיוֹת בִּשְׁלֹשָׁה תְּנָאִים שֶׁיִּרְאֶה בְּעֵינָיו וּבְאָזְנָיו יִשְׁמַע וּלְבָבוֹ יָבִין וָשָׁב',
  // 'עִקַּר הַתְּשׁוּבָה עַל יְדֵי עֲנָוָה שֶׁהָאָדָם צָרִיךְ לָשִׂים עַצְמוֹ כְּאַיִן',
  // 'עַל יְדֵי עֲנָוָה וְשִׁפְלוּת בְּתַכְלִית זוֹכִין לְתוֹרָה',
  // 'עִקַּר הַתְּשׁוּבָה הַשְּׁלֵמָה הוּא, כְּשֶׁאָדָם עוֹבֵר בְּאֵלּוּ הַמְּקוֹמוֹת מַמָּשׁ שֶׁהָיָה קֹדֶם הַתְּשׁוּבָה',
  // 'עִקַּר הַתְּשׁוּבָה עַל יְדֵי בּוּשָׁה כִּי צָרִיךְ לְהִתְבַּיֵּשׁ מְאֹד מְאֹד מִלְּפָנָיו יִתְבָּרַךְ',
  // 'מִי שֶׁרוֹצֶה לִזְכּוֹת לִתְשׁוּבָה, יִהְיֶה רָגִיל בַּאֲמִירַת תְּהִלִּים, כִּי תְּהִלִּים מְסֻגָּל לִתְשׁוּבָה',
  // 'עַל יְדֵי לִמּוּד הַתּוֹרָה נִתְקַבְּלִים כָּל הַתְּפִלּוֹת וְכָל הַבַּקָּשׁוֹת',
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
