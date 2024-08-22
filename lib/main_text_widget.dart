// package import
import 'dart:async';

import 'package:flutter/material.dart';

// my import
import 'custom_text_widget.dart';
import 'main_image_widgets.dart';

//
//
//
////////////////////////////////
// make a peket of text class //
////////////////////////////////

class mainTextWidget extends StatefulWidget {
  final BuildContext context;

  const mainTextWidget({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  _mainTextWidget createState() => _mainTextWidget();
}

class _mainTextWidget extends State<mainTextWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller1;
  late final Animation<double> _animation1;
  late final AnimationController _controller2;
  late final Animation<double> _animation2;
  late final AnimationController _controller3;
  late final Animation<double> _animation3;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      duration: const Duration(seconds: 0, milliseconds: 0),
      vsync: this,
    );

    _controller2 = AnimationController(
      duration: const Duration(seconds: 0, milliseconds: 0),
      vsync: this,
    );
    _controller3 = AnimationController(
      duration: const Duration(seconds: 0, milliseconds: 0),
      vsync: this,
    );

    _animation1 = Tween(begin: 0.0, end: 1.0).animate(_controller1);
    _animation2 = Tween(begin: 0.0, end: 1.0).animate(_controller2);
    _animation3 = Tween(begin: 0.0, end: 1.0).animate(_controller3);

    Future.delayed(const Duration(milliseconds: 000), () {
      _controller1.forward();
    });
    Future.delayed(const Duration(milliseconds: 000), () {
      _controller2.forward();
    });
    Future.delayed(const Duration(milliseconds: 0000), () {
      _controller3.forward();
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // spaces between rows
    final double longSpace = 50.0;
    final double shortSpace = 20.0;

    // text styles
    final TextStyle textStyleSimpleText = TextStyle(
        fontSize: 22,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w400,
        color: Theme.of(context).colorScheme.secondary,
        height: 1.4);

    final TextStyle textStyleSimpleText_pasokHead = TextStyle(
        fontSize: 16,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w400,
        color: Theme.of(context).colorScheme.onSecondary,
        height: 1.85);

    final TextStyle textStyleSimpleTextHeadline = TextStyle(
        fontSize: 28,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.secondary);

    final TextStyle textStyleSimpleText_small = TextStyle(
        fontSize: 17,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.secondary,
        height: 1.3);

    final TextStyle textStyleSimpleText_smallLight = TextStyle(
        fontSize: 18,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w400,
        color: Theme.of(context).colorScheme.secondary,
        height: 1.3);

    final TextStyle textStyleSimpleText_pasokNotes = TextStyle(
        fontSize: 15,
        fontFamily: 'DavidLibre',
        fontWeight: FontWeight.w400,
        color: Theme.of(context).colorScheme.secondary,
        height: 1.3);

    final TextStyle textStyleSimpleTextBold = TextStyle(
        fontSize: 25,
        fontFamily: "DavidLibre",
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.secondary,
        height: 1.4);

    final String endOfPasokStr = ':';
    final String endOfPasokHeadStr = '  ';

    return Column(children: [
      SizedBox(height: shortSpace),

      // FadeTransition(
      //   opacity: _animation1,
      //   child: CustomRichText(
      //     textAlign: TextAlign.center,
      //     alignment: Alignment.center,
      //     textSpan: TextSpan(
      //       children: <TextSpan>[
      //         TextSpan(
      //           text: "התיקון הכללי",
      //           style: textStyleSimpleTextHeadline.copyWith(
      //             fontSize: 50,
      //             fontWeight: FontWeight.w400,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      SizedBox(height: shortSpace),

      FadeTransition(
        opacity: _animation2,
        child: CustomRichText(
          textAlign: TextAlign.center,
          alignment: Alignment.center,
          textSpan: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "הקדמה",
                style: textStyleSimpleTextHeadline,
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: shortSpace),

      FadeTransition(
        opacity: _animation3,
        child: CustomRichText(
          textAlign: TextAlign.justify,
          textDirection: TextDirection.rtl,
          textSpan: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text:
                    "רַבֵּנוּ זִכְרוֹנוֹ לִבְרָכָה יִחֵד שְׁנֵי עֵדִים נֶאֱמָנִים, תַּלְמִידוֹ רַבִּי אַהֲרֹן מִבְּרֶסְלֶב"
                    " וְתַלְמִידוֹ רַבִּי נַפְתָּלִי מִנֶּעמְרוֹב, וְהִבְטִיחַ וְאָמַר בִּפְנֵיהֶם, שֶׁמִּי שֶׁיָּבוֹא עַל"
                    " קִבְרוֹ וְיֹאמַר שָׁם אֵלּוּ הָעֲשָׂרָה מִזְמוֹרֵי תְּהִלִּים וְיִתֵּן פְּרוּטָה לִצְדָקָה עֲבוּרוֹ,"
                    " אֲפִלּוּ אִם גָּדְלוּ וְעָצְמוּ עֲוֹנוֹתָיו וַחֲטָאָיו מְאֹד מְאֹד חַס וְשָׁלוֹם, אֲזַי אֶתְאַמֵּץ"
                    " וְאֶשְׁתַּדֵּל לָאֹרֶךְ וְלָרֹחַב לְהוֹשִׁיעוֹ וּלְתַקְּנוֹ. וְאָמַר בְּזוֹ הַלָּשׁוֹן: אִיךְ וֶועל"
                    " מִיךְ לֵייגֶען אִין דֶער לֶענְג אוּן אִין דֶער בְּרֵייט אִיך זָאל אִיהְם אַ טוֹבָה"
                    " טְהוּן, בַּיי דִי פֵּאוֹת וֶועל אִיך אִיהְם אַרוֹיס צִיהֶן פוּן שְׁאוֹל תַּחְתִּיוֹת"
                    " (אֶשְׁתַּטֵּחַ לָאֹרֶךְ וְלָרֹחַב לְהֵיטִיב עִמּוֹ. בְּפֵאוֹתָיו אֶמְשְׁכֵהוּ וְאוֹצִיאֵהוּ מִשְּׁאוֹל "
                    "תַּחְתִּיּוֹת). וַאֲנִי חָזָק בְּכָל הַדְּבָרִים שֶׁלִּי, אַךְ בַּזֶּה אֲנִי חָזָק בְּיוֹתֵר שֶׁאֵלּוּ"
                    " הָעֲשָׂרָה מִזְמוֹרֵי תְּהִלִּים מוֹעִילִים מְאֹד מְאֹד, וְאָמַר שֶׁהוּא תִּקּוּן הַכְּלָלִי,"
                    " כִּי כָּל עֲבֵרָה יֵשׁ לָהּ תִּקּוּן מְיֻחָד, אֲבָל תִּקּוּן הַזֶּה הוּא תִּקּוּן הַכְּלָלִי"
                    " (שיחות הר'ן קמ'א).",
                style: textStyleSimpleText_smallLight,
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: longSpace),

      FadeTransition(
        opacity: _animation3,
        child: CustomRichText(
          textAlign: TextAlign.center,
          alignment: Alignment.center,
          textSpan: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "יהי רצון קודם אמירת תהילים",
                style: textStyleSimpleTextHeadline,
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: shortSpace),

      FadeTransition(
        opacity: _animation3,
        child: CustomRichText(
          textSpan: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "אין לומר יהי רצון זה ביום שבת.",
                style: textStyleSimpleText_small,
              ),
            ],
          ),
        ),
      ),
      FadeTransition(
        opacity: _animation3,
        child: CustomRichText(
          textAlign: TextAlign.justify,
          textSpan: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text:
                    "יְהִי רָצוֹן מִלְפָנֶיךָ, יְהֹוָה אֱלֹהֵינוּ וְאֱלֹהֵי אֲבוֹתֵינוּ, הַבּוֹחֵר בְּדָוִד עַבְדוֹ וּבְזַרְעוֹ אַחֲרָיו,"
                    " וְהַבּוֹחֵר בְּשִירוֹת וְתִשְבָּחוֹת, שֶׁתֵּפֶן בְּרַחֲמִים אֶל קְרִיאַת מִזְמוֹרֵי תְהִלִּים שֶׁאֶקְרָא, כְּאִלוּ אֳמָרָם דָוִד"
                    " הַמֶלֶךְ עָלָיו הַשָׁלוֹם בְּעַצְמוֹ, זְכוּתוֹ יָגֵן עָלֵינוּ. וְתַעֲמוֹד לָנוּ זְכוּת פְּסוּקֵי הַתְּהִלִּים, וּזְכוּת"
                    " תֵבוֹתֵיהֶם, וְאוֹתִיוֹתֵיהֶם, וּנְקוּדוֹתֵיהֶם, וְטַעֲמֵיהֶם, וְהָשֵמוֹת הָיוֹצְאִים מֵהֶם מֵרָאשֵׁי תֵבוֹת וּמִסוֹפֵי"
                    " תֵבוֹת, לְכַפֵּר חַטֹאתֵינוּ וַעֲווֹנוֹתֵינוּ וּפְשָעֵינוּ, וּלְזַמֵר עָרִיצִים וְלְהַכְרִית כָּל הַחוֹחִים וְהַקוֹצִים"
                    " הַסוֹבְבִים אֶת הַשׁוֹשַׁנָה הָעֶלְיוֹנָה, וּלְחַבֵּר אֵשֶׁת נְעוּרִים עִם דוֹדָה בְּאַהֲבָה וְאַחֲוָה וְרֵעוּת. וּמִשָׁם "
                    "יִמָשֵׁךְ לָנוּ שֶׁפָע לְנֶפֶשׁ רוּחַ וּנְשָׁמָה לְטַהֲרֵנוּ מֵעֲווֹנוֹתֵינוּ וְלִסְלוֹחַ חַטֹאתֵינוּ וּלְכַפֵּר פְּשָׁעֵינוּ,"
                    " כְּמוֹ שֶׁסָלַחְתָ לְדָוִד שֶׁאָמָר מִזְמוֹרִים אֵלוּ לְפָנֶיךָ, כּמוֹ שֶׁנֶאֱמַר: גַם יְהֹוָה הֶעֱבִיר חַטָאתְךָ לֹא"
                    " תָמוּת. וְאַל תִקָחֵנוּ מֵהָעוֹלָם הַזֶה קוֹדֶם זְמַנֵנוּ, וְנִזְכֶּה לְחַיִים אֲרוּכִּים טוֹבִים וּמְתוּקָנִים,"
                    " בְּאוֹפָן שֶׁנוּכַל לְתַקֵן אֶת אֲשֶׁר שִׁיחַתְנוּ. וּזְכוּת דָוִד הָמֶלֶךְ עָלָיו הַשָׁלוֹם, תָגֵן עָלֵינוּ "
                    "וּבַעֲדֵנוּ שֶׁתַאֲרִיךְ אָפְּךָ עַד שׁוּבֵנוּ אֵלָיךָ בִּתְשוּבָה שְׁלֵמָה לְפָנֶיךָ. וּמֵאוֹצָר מַתְנָת חִנָם חָנֵנוּ"
                    " כְּדִכְתִיב: וְחַנוֹתִי אֶת אֲשֶׁר אָחוֹן וְרִחַמְתִי אֶת אֲשֶׁר אֲרַחֵם. וּכְשֵׁם שֶׁאָנוּ אוֹמְרִים לְפָנֶיךָ"
                    " שִׁירָה בָּעוֹלָם הַזֶה, כָּךְ נִזְכֶּה לוֹמַר לְפָנֶיךְ יְהֹוָה אֱלֹהֵינוּ שִׁיר וּשְׁבָחָה לָעוֹלָם הַבָּא."
                    " וְעַל יְדֵי אֲמִירַת תְהִלִים תִתְעוֹרֵר חֲבַצֶלֶת הַשָרוֹן, וְלָשִיר בְּקוֹל נָעִים בְּגִילַת "
                    "וְרַנֵן, כְּבוֹד הַלְבָנוֹן נִתַן לָה, הוֹד וְהָדָר בְּבֵית אֱלֹהֵינוּ, בִּמְהֵרָה בְּיָמֵינוּ, אָמֵן סֶלָה.",
                style: textStyleSimpleText_smallLight,
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "התיקון הכללי",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טוב לומר נוסח זה להיתקשרות לצדיק לפני אמירת התיקון הכללי.",
              style: textStyleSimpleText_small,
            ),
          ],
        ),
      ),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הֲרֵינִי מְקַשֵׁר עַצְמִי בַּאֲמִירַת הָעֲשָׂרָה מִזְמוֹרִים אֵלּוּ, לְכָל הַצַּדִּיקִים הָאֲמִתִּיִּים שֶׁבְּדוֹרֵנוּ, וּלְכָל הַצַּדִּיקִים"
                  " הָאֲמִתִּים שׁוֹכְנֵי עָפָר, קְדוֹשִׁים אָשֵׁר בָּאָרֶץ הֵמָּה, וּבִפְרָט לְרַבֵּנוּ הַקָּדוֹשׁ, צַדִּיק יְסוֹד עוֹלָם,"
                  " נַחַל נוֹבֵעַ מְקוֹר חָכְמָה, רַבֵּנוּ נַחְמָן בֶּן פֵיגֶא. זְכוּתָם יָגֵן עָלֵינוּ וְעַל כָּל יִשְׂרָאֵל אָמֵן.",
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וְעַל דַּעְתָּם וְעַל כַּוָּנָתָם אֲנִי אוֹמֵר כָּל אֵלּוּ הָעֲשָׂרָה קַפִּיטְל תְּהִלִּים,"
                  " וּבִזְכוּתָם וְכֹחָם אֶזְכֶּה לְעוֹרֵר וּלְגַלּוֹת כָּל הָעֲשָׂרָה מִינֵי נְגִינָה שֶׁנֶּאֱמַר בָּהֶם סֵפֶר "
                  "תְּהִלִּים, שֶׁהֵם: אַשְׁרֵי, בְּרָכָה, מַשְׂכִּיל, שִׁיר, נִצּוּחַ, נִגּוּן, תְּפִלָּה, הוֹדָאָה, מִזְמוֹר,"
                  " הַלְלוּיָהּ. שֶׁהֵם שִׁיר פָּשׁוּט, כָּפוּל, מְשֻׁלָּש, מְרֻבָּע, שֶׁהֵם כְּלוּלִים בְּשִׁמְךָ הַמְיֻחָד "
                  "הַגָּדוֹל וְהַקָדוֹשׁ. וּבִזְכוּת וְכֹחַ הַשְׁנֵי שְׁמוֹת הַקְּדוֹשִׁים הָאֵלּוּ בְּמִלּוּאָם, שֶׁהֵם אֵל אֱלֹהִים",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: " (ויכוון: אל'ף למ'ד, אל'ף למ'ד ה'י יו'ד מ'ם)",
              style: textStyleSimpleText_smallLight,
            ),
            TextSpan(
              text: " שֶׁהֵם עוֹלִים בְּמִסְפָּר תפ'ה,"
                  " כְּמִסְפַּר תְּהִלִּים. בְּכֹחַ אֵלוּ הַשֵּׁמוֹת תְּזַכֵּנִי לְתִקּוּן הַבְּרִית שֶׁהוּא תִּקּוּן הַכְּלָלִי אָמֵן.",
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "לְכוּ נְרַנְּנָה לַיהֹוָה, נָרִיעָה לְצוּר יִשְׁעֵנוּ: נְקַדְּמָה"
                  " פָּנָיו בְּתוֹדָה, בִּזְמִרוֹת נָרִיעַ לוֹ: כִּי אֵל גָּדוֹל יְהֹוָה, וּמֶלֶךְ גָּדוֹל"
                  " עַל כָּל אֱלֹהִים: הֲרֵינִי מְזַמֵּן אֶת פִּי לְהוֹדוֹת וּלְהַלֵּל וּלְשַׁבֵּחַ אֶת"
                  " בּוֹרְאִי לְשֵׁם יִחוּד קֻדְשָׁא בְּרִיךְ הוּא וּשְׁכִינְתֵּה, בִּדְחִילוּ וּרְחִימוּ,"
                  " וּרְחִימוּ וּדְחִילוּ, עַל יְדֵי הַהוּא טָמִיר, וְנֶעְלָם בְּשֵׁם כָּל יִשְׂרָאֵל.",
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),

      //////////////////////////////////////////////////

      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק טז",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מִכְתָּם לְדָוִד שָׁמְרֵנִי ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(שָׁמְרֵנִי בקמץ רגיל) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "אֵל כִּי חָסִיתִי בָךְ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אָמַרְתְּ לַיהֹוָה ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(לַדוֹנָי – א נחה) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "אֲדֹנָי אָתָּה טוֹבָתִי בַּל עָלֶיךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "לִקְדוֹשִׁים אֲשֶׁר בָּאָרֶץ הֵמָּה וְאַדִּירֵי כָּל חֶפְצִי בָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "יִרְבּוּ עַצְּבוֹתָם אַחֵר מָהָרוּ בַּל אַסִּיךְ נִסְכֵּיהֶם מִדָּם וּבַל אֶשָּׂא אֶת שְׁמוֹתָם עַל שְׂפָתָי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יְהֹוָה מְנָת חֶלְקִי וְכוֹסִי אַתָּה תּוֹמִיךְ גּוֹרָלִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "חֲבָלִים נָפְלוּ לִי בַּנְּעִמִים אַף נַחֲלָת שָׁפְרָה עָלָי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֲבָרֵךְ אֶת יְהֹוָה אֲשֶׁר יְעָצָנִי אַף לֵילוֹת יִסְּרוּנִי כִלְיוֹתָי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "שִׁוִּיתִי יְהֹוָה לְנֶגְדִּי תָמִיד כִּי מִימִינִי בַּל אֶמּוֹט",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "לָכֵן שָׂמַח לִבִּי וַיָּגֶל כְּבוֹדִי אַף בְּשָׂרִי יִשְׁכֹּן לָבֶטַח",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כִּי לֹא תַעֲזֹב נַפְשִׁי לִשְׁאוֹל לֹא תִתֵּן חֲסִידְךָ לִרְאוֹת שָׁחַת",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "תּוֹדִיעֵנִי אֹרַח חַיִּים שׂבַע שְׂמָחוֹת אֶת פָּנֶיךָ נְעִמוֹת בִּימִינְךָ נֶצַח",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      SizedBox(height: longSpace),

      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק לב",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "לְדָוִד מַשְׂכִּיל אַשְׁרֵי נְשׂוּי פֶּשַׁע כְּסוּי חֲטָאָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אַשְׁרֵי אָדָם לֹא יַחְשֹׁב יְהֹוָה לוֹ עָוֹן וְאֵין בְּרוּחוֹ רְמִיָּה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כִּי הֶחֱרַשְׁתִּי בָּלוּ עֲצָמָי בְּשַׁאֲגָתִי כָּל הַיּוֹם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כִּי יוֹמָם וָלַיְלָה תִּכְבַּד עָלַי יָדֶךָ נֶהְפַּךְ לְשַׁדִּי בְּחַרְבֹנֵי קַיִץ סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "חַטָּאתִי אוֹדִיעֲךָ וַעֲוֹנִי לֹא כִסִּיתִי אָמַרְתִּי אוֹדֶה עֲלֵי פְשָׁעַי לַיהֹוָה ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(לַדוֹנָי – א נחה) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: " וְאַתָּה נָשָׂאתָ עֲוֹן חַטָּאתִי סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "עַל זֹאת יִתְפַּלֵּל כָּל חָסִיד אֵלֶיךָ לְעֵת מְצֹא רַק לְשֵׁטֶף מַיִם רַבִּים אֵלָיו לֹא יַגִּיעוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אַ",
              style: textStyleSimpleTextBold,
            ),
            TextSpan(
              text: "תָּה ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "סֵ",
              style: textStyleSimpleTextBold,
            ),
            TextSpan(
              text: "תֶר ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "לִ",
              style: textStyleSimpleTextBold,
            ),
            TextSpan(
              text: "י ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: '(יפסיק מעט, טוב לכוון בשם סא"ל) ',
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "מִצַּר תִּצְּרֵנִי רָנֵּי פַלֵּט תְּסוֹבְבֵנִי סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אַשְׂכִּילְךָ וְאוֹרְךָ בְּדֶרֶךְ זוּ תֵלֵךְ אִיעֲצָה עָלֶיךָ עֵינִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אַל תִּהְיוּ כְּסוּס כְּפֶרֶד אֵין הָבִין בְּמֶתֶג וָרֶסֶן עֶדְיוֹ לִבְלוֹם בַּל קְרוֹב אֵלֶיךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "רַבִּים מַכְאוֹבִים לָרָשָׁע וְהַבּוֹטֵחַ בַּיהֹוָה ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(בַדוֹנָי – א נחה) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "חֶסֶד יְסוֹבְבֶנּוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שִׂמְחוּ בַיהֹוָה ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(בַדוֹנָי – א נחה) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "וְגִילוּ צַדִּיקִים וְהַרְנִינוּ כָּל יִשְׁרֵי לֵב",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק מא",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לַמְנַצֵּחַ מִזְמוֹר לְדָוִד",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אַשְׁרֵי מַשְׂכִּיל אֶל דָּל בְּיוֹם רָעָה יְמַלְּטֵהוּ יְהֹוָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "יְהֹוָה יִשְׁמְרֵהוּ וִיחַיֵּהוּ וְאֻשַּׁר בָּאָרֶץ וְאַל תִּתְּנֵהוּ בְּנֶפֶשׁ אֹיְבָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "יְהוָה יִסְעָדֶנּוּ עַל עֶרֶשׂ דְּוָי כָּל מִשְׁכָּבוֹ הָפַכְתָּ בְחָלְיוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֲנִי אָמַרְתִּי יְהֹוָה חָנֵּנִי רְפָאָה נַפְשִׁי כִּי חָטָאתִי לָךְ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אוֹיְבַי יֹאמְרוּ רַע לִי מָתַי יָמוּת וְאָבַד שְׁמוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וְאִם בָּא לִרְאוֹת שָׁוְא יְדַבֵּר לִבּוֹ יִקְבָּץ אָוֶן לוֹ יֵצֵא לַחוּץ יְדַבֵּר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "יַחַד עָלַי יִתְלַחֲשׁוּ כָּל שֹׂנְאָי עָלַי יַחְשְׁבוּ רָעָה לִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "דְּבַר בְּלִיַּעַל יָצוּק בּוֹ וַאֲשֶׁר שָׁכַב לֹא יוֹסִיף לָקוּם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "גַּם אִישׁ שְׁלוֹמִי אֲשֶׁר בָּטַחְתִּי בוֹ אוֹכֵל לַחְמִי הִגְדִּיל עָלַי עָקֵב",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וְאַתָּה יְהֹוָה חָנֵּנִי וַהֲקִימֵנִי וַאֲשַׁלְּמָה לָהֶם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בְּזֹאת יָדַעְתִּי כִּי חָפַצְתָּ בִּי כִּי לֹא יָרִיעַ אֹיְבִי עָלָי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וַאֲנִי בְּתֻמִּי תָּמַכְתָּ בִּי וַתַּצִּיבֵנִי לְפָנֶיךָ לְעוֹלָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בָּרוּךְ יְהֹוָה אֱלֹהֵי יִשְׂרָאֵל מֵהָעוֹלָם וְעַד הָעוֹלָם אָמֵן וְאָמֵן",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק מב",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לַמְנַצֵּחַ מַשְׂכִּיל לִבְנֵי קֹרַח",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כְּאַיָּל תַּעֲרֹג עַל אֲפִיקֵי מָיִם כֵּן נַפְשִׁי תַעֲרֹג אֵלֶיךָ אֱלֹהִים",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "צָמְאָה נַפְשִׁי לֵאלֹהִים ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(לֵלֹהִים - א נחה) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "לְאֵל חָי מָתַי אָבוֹא וְאֵרָאֶה פְּנֵי אֱלֹהִים",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הָיְתָה לִּי דִמְעָתִי לֶחֶם יוֹמָם וָלָיְלָה בֶּאֱמֹר אֵלַי כָּל הַיּוֹם אַיֵּה אֱלֹהֶיךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֵלֶּה אֶזְכְּרָה וְאֶשְׁפְּכָה עָלַי נַפְשִׁי כִּי אֶעֱבֹר בַּסָּךְ אֶדַּדֵּם עַד בֵּית אֱלֹהִים בְּקוֹל רִנָּה וְתוֹדָה הָמוֹן חוֹגֵג",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "מַה תִּשְׁתּוֹחֲחִי נַפְשִׁי וַתֶּהֱמִי עָלָי הוֹחִילִי לֵאלֹהִים כִּי עוֹד אוֹדֶנּוּ יְשׁוּעוֹת פָּנָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֱלֹהַי עָלַי נַפְשִׁי תִשְׁתּוֹחָח עַל כֵּן אֶזְכָּרְךָ מֵאֶרֶץ יַרְדֵּן וְחֶרְמוֹנִים מֵהַר מִצְעָר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "תְּהוֹם אֶל תְּהוֹם קוֹרֵא לְקוֹל צִנּוֹרֶיךָ כָּל מִשְׁבָּרֶיךָ וְגַלֶּיךָ עָלַי עָבָרוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "יוֹמָם יְצַוֶּה יְהֹוָה חַסְדּוֹ וּבַלַּיְלָה שִׁירֹה עִמִּי תְּפִלָּה לְאֵל חַיָּי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אוֹמְרָה לְאֵל סַלְעִי לָמָה שְׁכַחְתָּנִי לָמָּה קֹדֵר אֵלֵךְ בְּלַחַץ אוֹיֵב",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בְּרֶצַח בְּעַצְמוֹתַי חֵרְפוּנִי צוֹרְרָי בְּאָמְרָם אֵלַי כָּל הַיּוֹם אַיֵּה אֱלֹהֶיךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "מַה תִּשְׁתּוֹחֲחִי נַפְשִׁי וּמַה תֶּהֱמִי עָלָי הוֹחִילִי לֵאלֹהִים ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(לֵלֹהִים - א נחה) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "כִּי עוֹד אוֹדֶנּוּ יְשׁוּעֹת פָּנַי וֵאלֹהָי ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(וֵלֹהָי - א נחה)",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק נט",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "לַמְנַצֵּחַ אַל תַּשְׁחֵת לְדָוִד מִכְתָּם בִּשְׁלֹחַ שָׁאוּל וַיִּשְׁמְרוּ אֶת הַבַּיִת לַהֲמִיתוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הַצִּילֵנִי מֵאֹיְבַי אֱלֹהָי מִמִּתְקוֹמְמַי תְּשַׂגְּבֵנִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הַצִּילֵנִי מִפֹּעֲלֵי אָוֶן וּמֵאַנְשֵׁי דָמִים הוֹשִׁיעֵנִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כִּי הִנֵּה אָרְבוּ לְנַפְשִׁי יָגוּרוּ עָלַי עַזִּים לֹא פִשְׁעִי וְלֹא חַטָּאתִי יְהֹוָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בְּלִי עָוֹן יְרֻצוּן וְיִכּוֹנָנוּ עוּרָה לִקְרָאתִי וּרְאֵה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וְאַתָּה יְהֹוָה אֱלֹהִים צְבָאוֹת אֱלֹהֵי יִשְׂרָאֵל הָקִיצָה לִפְקֹד כָּל הַגּוֹיִם אַל תָּחֹן כָּל בֹּגְדֵי אָוֶן סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יָשׁוּבוּ לָעֶרֶב יֶהֱמוּ כַכָּלֶב וִיסוֹבְבוּ עִיר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הִנֵּה יַבִּיעוּן בְּפִיהֶם חֲרָבוֹת בְּשִׂפְתוֹתֵיהֶם כִּי מִי שֹׁמֵעַ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וְאַתָּה יְהֹוָה תִּשְׂחַק לָמוֹ תִּלְעַג לְכָל גּוֹיִם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "עֻזּוֹ אֵלֶיךָ אֶשְׁמֹרָה כִּי אֱלֹהִים מִשְׂגַּבִּי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֱלֹהֵי חַסְדִּי יְקַדְּמֵנִי אֱלֹהִים יַרְאֵנִי בְשֹׁרְרָי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אַל תַּהַרְגֵם פֶּן יִשְׁכְּחוּ עַמִּי הֲנִיעֵמוֹ בְחֵילְךָ וְהוֹרִידֵמוֹ מָגִנֵּנוּ אֲדֹנָי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "חַטַּאת פִּימוֹ דְּבַר שְׂפָתֵימוֹ וְיִלָּכְדוּ בִגְאוֹנָם וּמֵאָלָה וּמִכַּחַשׁ יְסַפֵּרוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כַּלֵּה בְחֵמָה כַּלֵּה וְאֵינֵמוֹ וְיֵדְעוּ כִּי אֱלֹהִים מֹשֵׁל בְּיַעֲקֹב לְאַפְסֵי הָאָרֶץ סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וְיָשׁוּבוּ לָעֶרֶב יֶהֱמוּ כַכָּלֶב וִיסוֹבְבוּ עִיר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הֵמָּה יְנִיעוּן לֶאֱכֹל אִם לֹא יִשְׂבְּעוּ וַיָּלִינוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וַאֲנִי אָשִׁיר עֻזֶּךָ וַאֲרַנֵּן לַבֹּקֶר חַסְדֶּךָ כִּי הָיִיתָ מִשְׂגַּב לִי וּמָנוֹס בְּיוֹם צַר לִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "עֻזִּי אֵלֶיךָ אֲזַמֵּרָה כִּי אֱלֹהִים מִשְׂגַּבִּי אֱלֹהֵי חַסְדִּי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק עז",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לַמְנַצֵּחַ עַל יְדוּתוּן לְאָסָף מִזְמוֹר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "קוֹלִי אֶל אֱלֹהִים וְאֶצְעָקָה קוֹלִי אֶל אֱלֹהִים וְהַאֲזִין אֵלָי ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: '(ב"אלהים" יכוון השם במילוי אלף למד אלף למד הי יוד מם)',
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בְּיוֹם צָרָתִי אֲדֹנָי דָּרָשְׁתִּי יָדִי לַיְלָה נִגְּרָה וְלֹא תָפוּג מֵאֲנָה הִנָּחֵם נַפְשִׁי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֶזְכְּרָה אֱלֹהִים וְאֶהֱמָיָה אָשִׂיחָה וְתִתְעַטֵּף רוּחִי סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אָחַזְתָּ שְׁמֻרוֹת עֵינָי נִפְעַמְתִּי וְלֹא אֲדַבֵּר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "חִשַּׁבְתִּי יָמִים מִקֶּדֶם שְׁנוֹת עוֹלָמִים",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֶזְכְּרָה נְגִינָתִי בַּלָּיְלָה עִם לְבָבִי אָשִׂיחָה וַיְחַפֵּשׂ רוּחִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הַלְעוֹלָמִים יִזְנַח אֲדֹנָי וְלֹא יֹסִיף לִרְצוֹת עוֹד",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הֶאָפֵס לָנֶצַח חַסְדּוֹ גָּמַר אוֹמֶר לְדֹר וָדֹר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הֲשָׁכַח חַנּוֹת אֵל אִם קָפַץ בְּאַף רַחֲמָיו סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וָאֹמַר חַלּוֹתִי הִיא שְׁנוֹת יְמִין עֶלְיוֹן",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֶזְכּוֹר מַעַלְלֵי יָהּ כִּי אֶזְכְּרָה מִקֶּדֶם פִּלְאֶךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וְהָגִיתִי בְכָל פָּעֳלֶךָ וּבַעֲלִילוֹתֶיךָ אָשִׂיחָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "אֱלֹהִים בַּקֹּדֶשׁ דַּרְכֶּךָ מִי אֵל גָּדוֹל כֵּאלֹהִים ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(כֵּלֹהִים – א נחה)",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אַתָּה הָאֵל עֹשֵׂה פֶלֶא הוֹדַעְתָּ בָעַמִּים עֻזֶּךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "גָּאַלְתָּ בִּזְרוֹעַ עַמֶּךָ בְּנֵי יַעֲקֹב וְיוֹסֵף סֶלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "רָאוּךָ מַּיִם אֱלֹהִים רָאוּךָ מַּיִם יָחִילוּ אַף יִרְגְּזוּ תְהֹמוֹת",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "זֹרְמוּ מַיִם עָבוֹת קוֹל נָתְנוּ שְׁחָקִים אַף חֲצָצֶיךָ יִתְהַלָּכוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "קוֹל רַעַמְךָ בַּגַּלְגַּל הֵאִירוּ בְרָקִים תֵּבֵל רָגְזָה וַתִּרְעַשׁ הָאָרֶץ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כ",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בַּיָּם דַּרְכֶּךָ וּשְׁבִילְךָ בְּמַיִם רַבִּים וְעִקְּבוֹתֶיךָ לֹא נוֹדָעוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "נָחִיתָ כַצֹּאן עַמֶּךָ בְּיַד מֹשֶׁה וְאַהֲרֹן",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק צ",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "תְּפִלָּה לְמֹשֶׁה אִישׁ הָאֱלֹהִים אֲדֹנָי מָעוֹן אַתָּה הָיִיתָ לָּנוּ בְּדֹר וָדֹר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בְּטֶרֶם הָרִים יֻלָּדוּ וַתְּחוֹלֵל אֶרֶץ וְתֵבֵל וּמֵעוֹלָם עַד עוֹלָם אַתָּה אֵל",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "תָּשֵׁב אֱנוֹשׁ עַד דַּכָּא וַתֹּאמֶר שׁוּבוּ בְנֵי אָדָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כִּי אֶלֶף שָׁנִים בְּעֵינֶיךָ כְּיוֹם אֶתְמוֹל כִּי יַעֲבֹר וְאַשְׁמוּרָה בַלָּיְלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "זְרַמְתָּם שֵׁנָה יִהְיוּ בַּבֹּקֶר כֶּחָצִיר יַחֲלֹף",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "בַּבֹּקֶר יָצִיץ וְחָלָף לָעֶרֶב יְמוֹלֵל וְיָבֵשׁ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כִּי כָלִינוּ בְאַפֶּךָ וּבַחֲמָתְךָ נִבְהָלְנוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "שַׁתָּה עֲוֹנֹתֵינוּ לְנֶגְדֶּךָ עֲלֻמֵנוּ לִמְאוֹר פָּנֶיךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כִּי כָל יָמֵינוּ פָּנוּ בְעֶבְרָתֶךָ כִּלִּינוּ שָׁנֵינוּ כְמוֹ הֶגֶה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "יְמֵי שְׁנוֹתֵינוּ בָּהֶם שִׁבְעִים שָׁנָה וְאִם בִּגְבוּרֹת שְׁמוֹנִים שָׁנָה וְרָהְבָּם ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(וְרוֹהְבָּם - ה בשווא נח) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "עָמָל וָאָוֶן כִּי גָז חִישׁ וַנָּעֻפָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מִי יוֹדֵעַ עֹז אַפֶּךָ וּכְיִרְאָתְךָ עֶבְרָתֶךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לִמְנוֹת יָמֵינוּ כֵּן הוֹדַע וְנָבִא לְבַב חָכְמָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שׁוּבָה יְהֹוָה עַד מָתָי וְהִנָּחֵם עַל עֲבָדֶיךָ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "שַׂבְּעֵנוּ בַבֹּקֶר חַסְדֶּךָ וּנְרַנְּנָה וְנִשְׂמְחָה בְּכָל יָמֵינוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שַׂמְּחֵנוּ כִּימוֹת עִנִּיתָנוּ שְׁנוֹת רָאִינוּ רָעָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יֵרָאֶה אֶל עֲבָדֶיךָ פָּעֳלֶךָ וַהֲדָרְךָ עַל בְּנֵיהֶם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וִיהִי נֹעַם אֲדֹנָי אֱלֹהֵינוּ עָלֵינוּ וּמַעֲשֵׂה יָדֵינוּ כּוֹנְנָה עָלֵינוּ וּמַעֲשֵׂה יָדֵינוּ כּוֹנְנֵהוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק קה",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הוֹדוּ לַיהֹוָה ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(לַדוֹנָי – א נחה) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "קִרְאוּ בִשְׁמוֹ הוֹדִיעוּ בָעַמִּים עֲלִילוֹתָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),

      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שִׁירוּ לוֹ זַמְּרוּ לוֹ שִׂיחוּ בְּכָל נִפְלְאֹתָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הִתְהַלְלוּ בְּשֵׁם קָדְשׁוֹ יִשְׂמַח לֵב מְבַקְשֵׁי יְהֹוָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "דִּרְשׁוּ יְהֹוָה וְעֻזּוֹ בַּקְּשׁוּ פָנָיו תָּמִיד",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "זִכְרוּ נִפְלְאוֹתָיו אֲשֶׁר עָשָׂה מֹפְתָיו וּמִשְׁפְּטֵי פִיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "זֶרַע אַבְרָהָם עַבְדּוֹ בְּנֵי יַעֲקֹב בְּחִירָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הוּא יְהֹוָה אֱלֹהֵינוּ בְּכָל הָאָרֶץ מִשְׁפָּטָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "זָכַר לְעוֹלָם בְּרִיתוֹ דָּבָר צִוָּה לְאֶלֶף דּוֹר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אֲשֶׁר כָּרַת אֶת אַבְרָהָם וּשְׁבוּעָתוֹ לְיִשְׂחָק",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "י",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וַיַּעֲמִידֶהָ לְיַעֲקֹב לְחֹק לְיִשְׂרָאֵל בְּרִית עוֹלָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לֵאמֹר לְךָ אֶתֵּן אֶת אֶרֶץ כְּנָעַן חֶבֶל נַחֲלַתְכֶם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "בִּהְיוֹתָם ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: "(בִּהְיוֹתָם - האות ה בשווא נח) ",
              style: textStyleSimpleText_pasokNotes,
            ),
            TextSpan(
              text: "מְתֵי מִסְפָּר כִּמְעַט וְגָרִים בָּהּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וַיִּתְהַלְּכוּ מִגּוֹי אֶל גּוֹי מִמַּמְלָכָה אֶל עַם אַחֵר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לֹא הִנִּיחַ אָדָם לְעָשְׁקָם וַיּוֹכַח עֲלֵיהֶם מְלָכִים",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אַל תִּגְּעוּ בִמְשִׁיחָי וְלִנְבִיאַי אַל תָּרֵעוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "טז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וַיִּקְרָא רָעָב עַל הָאָרֶץ כָּל מַטֵּה לֶחֶם שָׁבָר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׁלַח לִפְנֵיהֶם אִישׁ לְעֶבֶד נִמְכַּר יוֹסֵף",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "עִנּוּ בַכֶּבֶל רַגְלוֹ בַּרְזֶל בָּאָה נַפְשׁוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "יט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "עַד עֵת בֹּא דְבָרוֹ אִמְרַת יְהֹוָה צְרָפָתְהוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כ",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׁלַח מֶלֶךְ וַיַתִּירֵהוּ מֹשֵׁל עַמִּים וַיְפַתְּחֵהוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׂמוֹ אָדוֹן לְבֵיתוֹ וּמֹשֵׁל בְּכָל קִנְיָנוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לֶאְסֹר שָׂרָיו בְּנַפְשׁוֹ וּזְקֵנָיו יְחַכֵּם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וַיָּבֹא יִשְׂרָאֵל מִצְרָיִם וְיַעֲקֹב גָּר בְּאֶרֶץ חָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וַיֶּפֶר אֶת עַמּוֹ מְאֹד וַיַּעֲצִמֵהוּ מִצָּרָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הָפַךְ לִבָּם לִשְׂנֹא עַמּוֹ לְהִתְנַכֵּל בַּעֲבָדָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׁלַח מֹשֶׁה עַבְדּוֹ אַהֲרֹן אֲשֶׁר בָּחַר בּוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׂמוּ בָם דִּבְרֵי אֹתוֹתָיו וּמֹפְתִים בְּאֶרֶץ חָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׁלַח חֹשֶׁךְ וַיַּחֲשִׁךְ וְלֹא מָרוּ אֶת דְּבָרוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הָפַךְ אֶת מֵימֵיהֶם לְדָם וַיָּמֶת אֶת דְּגָתָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ל",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׁרַץ אַרְצָם צְפַרְדְּעִים בְּחַדְרֵי מַלְכֵיהֶם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אָמַר וַיָּבֹא עָרֹב כִּנִּים בְּכָל גְּבוּלָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "נָתַן גִּשְׁמֵיהֶם בָּרָד אֵשׁ לֶהָבוֹת בְּאַרְצָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וַיַּךְ גַּפְנָם וּתְאֵנָתָם וַיְשַׁבֵּר עֵץ גְּבוּלָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אָמַר וַיָּבֹא אַרְבֶּה וְיֶלֶק וְאֵין מִסְפָּר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וַיֹּאכַל כָּל עֵשֶׂב בְּאַרְצָם וַיֹּאכַל פְּרִי אַדְמָתָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וַיַּךְ כָּל בְּכוֹר בְּאַרְצָם רֵאשִׁית לְכָל אוֹנָם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וַיּוֹצִיאֵם בְּכֶסֶף וְזָהָב וְאֵין בִּשְׁבָטָיו כּוֹשֵׁל",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׂמַח מִצְרַיִם בְּצֵאתָם כִּי נָפַל פַּחְדָּם עֲלֵיהֶם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "לט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פָּרַשׂ עָנָן לְמָסָךְ וְאֵשׁ לְהָאִיר לָיְלָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מ",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "שָׁאַל וַיָּבֵא שְׂלָו וְלֶחֶם שָׁמַיִם יַשְׂבִּיעֵם",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מא",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פָּתַח צוּר וַיָּזוּבוּ מָיִם הָלְכוּ בַּצִּיּוֹת נָהָר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כִּי זָכַר אֶת דְּבַר קָדְשׁוֹ אֵת אַבְרָהָם עַבְדּוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "וַיּוֹצִא עַמּוֹ בְשָׂשׂוֹן בְּרִנָּה אֶת בְּחִירָיו",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "וַיִּתֵּן לָהֶם אַרְצוֹת גּוֹיִם וַעֲמַל לְאֻמִּים יִירָשׁוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "מה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בַּעֲבוּר יִשְׁמְרוּ חֻקָּיו וְתוֹרֹתָיו יִנְצֹרוּ הַלְלוּיָהּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק קלז",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "עַל נַהֲרוֹת בָּבֶל שָׁם יָשַׁבְנוּ גַּם בָּכִינוּ בְּזָכְרֵנוּ אֶת צִיּוֹן",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "עַל עֲרָבִים בְּתוֹכָהּ תָּלִינוּ כִּנֹּרוֹתֵינוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "כִּי שָׁם שְׁאֵלוּנוּ שׁוֹבֵינוּ דִּבְרֵי שִׁיר וְתוֹלָלֵינוּ שִׂמְחָה שִׁירוּ לָנוּ מִשִּׁיר צִיּוֹן",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אֵיךְ נָשִׁיר אֶת שִׁיר יְהֹוָה עַל אַדְמַת נֵכָר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אִם אֶשְׁכָּחֵךְ יְרוּשָׁלָם תִּשְׁכַּח יְמִינִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "תִּדְבַּק לְשׁוֹנִי לְחִכִּי אִם לֹא אֶזְכְּרֵכִי אִם לֹא אַעֲלֶה אֶת יְרוּשָׁלַם עַל רֹאשׁ שִׂמְחָתִי",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ז",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "זְכֹר יְהֹוָה לִבְנֵי אֱדוֹם אֵת יוֹם יְרוּשָׁלָם הָאֹמְרִים עָרוּ עָרוּ עַד הַיְסוֹד בָּהּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ח",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "בַּת בָּבֶל הַשְּׁדוּדָה אַשְׁרֵי שֶׁיְשַׁלֶּם לָךְ אֶת גְּמוּלֵךְ שֶׁגָּמַלְתְּ לָנוּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ט",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "אַשְׁרֵי שֶׁיֹּאחֵז וְנִפֵּץ אֶת עֹלָלַיִךְ אֶל הַסָּלַע",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "פרק קנ",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "א",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הַלְלוּיָהּ הַלְלוּ אֵל בְּקָדְשׁוֹ הַלְלוּהוּ בִּרְקִיעַ עֻזּוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ב",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הַלְלוּהוּ בִּגְבוּרֹתָיו הַלְלוּהוּ כְּרֹב גֻּדְלוֹ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ג",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הַלְלוּהוּ בְּתֵקַע שׁוֹפָר הַלְלוּהוּ בְּנֵבֶל וְכִנּוֹר",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ד",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "הַלְלוּהוּ בְתֹף וּמָחוֹל הַלְלוּהוּ בְּמִנִּים וְעֻגָב",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ה",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "הַלְלוּהוּ בְּצִלְצְלֵי שָׁמַע הַלְלוּהוּ בְּצִלְצְלֵי תְרוּעָה",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כֹּל הַנְּשָׁמָה תְּהַלֵּל יָהּ הַלְלוּיָהּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      CustomRichTextPasok(
        textSpanHead: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "ו",
              style: textStyleSimpleText_pasokHead,
            ),
            TextSpan(
              text: endOfPasokHeadStr,
              style: textStyleSimpleText_pasokHead,
            ),
          ],
        ),
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "כֹּל הַנְּשָׁמָה תְּהַלֵּל יָהּ הַלְלוּיָהּ",
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: endOfPasokStr,
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "מִי יִתֵּן מִצִּיּוֹן יְשׁוּעַת יִשְׂרָאֵל בְּשׁוּב יְהֹוָה שְׁבוּת עַמּוֹ, יָגֵל יַעֲקֹב"
                  " יִשְׂמַח יִשְׂרָאֵל: וּתְשׁוּעַת צַדִּיקִים מֵיְהֹוָה, מָעוּזָּם בְּעֵת צָרָה: וַיַּעְזְרֵם יְהֹוָה וַיְפַלְּטֵם,"
                  " יְפַלְּטֵם מֵרְשָׁעִים וְיוֹשִיעֵם כִּי חָסוּ בוֹ: חִזְקוּ וְיַאֲמֵץ לְבַבְכֶם כָּל הַמְיַחֲלִים לַיְהֹוָה:",
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),
      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  "זאת התפילה מצאנו באמתחת הכתבים, והיא מעט הכמות ורב האיכות ",
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'רִבּוֹנוֹ שֶׁל עוֹלָם, עִלַּת הָעִלּוֹת וְסִבַּת'
                  ' כָּל הַסִּבּוֹת, אַנְתְּ לְעֵלָּא, לְעֵלָּא מִן כֹּלָא, וְלֵית לְעֵלָּא מִנָּךְ, דְּלֵית מַחֲשָׁבָה תְּפִיסָא בָךְ כְּלָל, '
                  'וּלְךָ דּוּמִיָּה תְּהִלָּה, וּמְרֹמָם עַל כָּל בְּרָכָה וּתְּהִלָּה. אוֹתְךָ אֶדְרֹשׁ, אוֹתְךָ אֲבַקֵּשׁ שְׁתַּחְתֹּר חֲתִירָה'
                  ' דֶּרֶךְ כְּבוּשָׁה מֵאִתָּךְ, דֶּרֶךְ כָּל הָעוֹלָמוֹת, עַד הַהִשְׁתַּלְשְׁלוּת שֶׁלִּי בַּמָּקוֹם שֶׁאֲנִי עוֹמֵד, כְּפִי אֲשֶׁר '
                  'נִגְלָה לְךָ, יוֹדֵעַ תַּעֲלוּמוּת, וּבַדֶּרֶךְ וּנְתִיב הַזֶּה תָּאִיר עָלַי אוֹרְךָ, לְהַחֲזִירֵנִי בִּתְשׁוּבָה שְׁלֵמָה'
                  ' לְפָנֶיךָ בֶּאֱמֶת, כְּפִי רְצוֹנְךָ בֶּאֱמֶת, כְּפִי רְצוֹן מִבְחָר הַבְּרוּאִים, לִבְלִי לַחֲשֹׁב בְּמַחֲשַׁבְתִּי שׁוּם'
                  ' מַחֲשֶׁבֶת חוּץ וְשׁוּם מַחֲשָׁבָה וִּבִלְבּוּל שֶׁהוּא נֶגֶד רְצוֹנְךָ, רַק לְדַבֵּק בְּמַחֲשָׁבוֹת זַכּוֹת צַחוֹת '
                  'וּקְדוֹשׁוֹת בַּעֲבוֹדָתְךָ בֶּאֱמֶת בְּהַשָּׂגָתְךָ וּבְתוֹרָתְךָ. "הַט לִבִּי אֶל עֵדְוֹתֶיךָ", וְתֶן לִי לֵב טָהוֹר'
                  ' לְעָבְדְּךָ בֶּאֱמֶת. וּמִמִּצוּלוֹת יָם תּוֹצִיאֵנִי לְאוֹר גָּדוֹל חִישׁ קַל מְהֵרָה. תְּשׁוּעַת יְהֹוָה כְּהֶרֶף'
                  ' עַיִן, לֵאוֹר בְּאוֹר הַחַיִּים כָּל יְמֵי הֱיוֹתִי עַל פְּנֵי הָאֲדָמָה. וְאֶזְכֶּה לְחַדֵּשׁ נְעוּרָי,'
                  ' הַיָּמִים שֶׁעָבְרוּ בַּחֹשֶׁךְ, לְהַחֲזִירָם אֶל הַקְּדֻשָּׁה, וְתִהְיֶה יְצִיאָתִי מִן הָעוֹלָם כְּבִיאָתִי,'
                  ' בְּלֹא חֵטְא. וְאֶזְכֶּה לַחֲזוֹת בְּנֹעַם יְהֹוָה וּלְבַקֵּר בְּהֵיכָלוֹ, כֻּלּוֹ אוֹמֵר כָּבוֹד, אָמֵן נֶצַח סֶלָה וָעֶד.',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: longSpace),

      //
      //
      //
      MainPageBigImage(context: context),
      //
      //
      //
      SizedBox(height: longSpace),

      CustomRichText(
        textAlign: TextAlign.center,
        alignment: Alignment.center,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'תפלת רבי נתן משער החמשים, לאומרה לאחר התיקון הכללי',
              style: textStyleSimpleTextHeadline,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  'אָשִׁירָה לַיהֹוָה בְּחַיָּי, אֲזַמְּרָה לֵאלֹהַי בְּעוֹדִי, יֶעֱרַב עָלָיו שִׂיחִי'
                  ' אָנֹכִי אֶשְׂמַח בַּיהֹוָה: הוֹדוּ לַיהֹוָה בְּכִנּוֹר, בְּנֵבֶל עָשׂוֹר זַמְּרוּ לוֹ: אֱלֹהִים, שִׁיר חָדָשׁ אָשִׁירָה לָּךְ,'
                  ' בְּנֵבֶל עָשׂוֹר אֲזַמְּרָה לָּךְ: עֲלֵי עָשׂוֹר וַעֲלֵי נָבֶל, עֲלֵי הִגָּיוֹן בְּכִנּוֹר: כִּי שִׂמַּחְתַּנִי יְהֹוָה בְּפָעֳלֶךָ,'
                  ' בְּמַעֲשֵׂי יָדֶיךָ אֲרַנֵּן: רִבּוֹנוֹ שֶׁל עוֹלָם, אֲדוֹן כֹּל, בּוֹרֵא כָּל הַנְּשָׁמוֹת, רִבּוֹן כָּל הַמַּעֲשִׂים, הַבּוֹחֵר '
                  'בְּשִׁירֵי זִמְרָה, עָזְרֵנִי וְחָנֵּנִי בְּרַחֲמֶיךָ הָרַבִּים וּבַחֲסָדֶיךָ הָעֲצוּמִים, שֶׁאֶזְכֶּה לְעוֹרֵר וּלְהוֹצִיא וּלְגַלּוֹת '
                  'כָּל הָעֲשָׂרָה מִינֵי נְגִינָה שֶׁנֶּאֱמַר בָּהֶם סֵפֶר תְּהִלִּים. וּבִזְכוּת אֵלּוּ הָעֲשָׂרָה קַפִּיטְל תְּהִלִּים שֶׁאָמַרְתִּי לְפָנֶיךָ,'
                  ' שֶׁהֵם כְּנֶגֶד עֲשָׂרָה מִינֵי נְגִינָה, שֶׁנֶּאֱמַר בָּהֶם סֵפֶר תְּהִלִּים, שֶׁהֵם: אַשְׁרֵי, בְּרָכָה, מַשְׂכִּיל, שִׁיר, נִצּוּחַ,'
                  ' נִגּוּן, תְּפִלָּה, הוֹדָאָה, מִזְמוֹר, הַלְלוּיָהּ. בִּזְכוּת הַמִּזְמוֹרִים, וּבִזְכוּת הַפְּסוּקִים, וּבִזְכוּת תֵּבוֹתֵיהֶם, '
                  'וְאוֹתִיּוֹתֵיהֶם, וּנְקֻדּוֹתֵיהֶם, וְטַעֲמֵיהֶם, וְהַשֵּׁמוֹת הַיּוֹצְאִים מֵהֶם מֵרָאשֵׁי תֵּבוֹת וּמִסּוֹפֵי תֵּבוֹת, וּבִזְכוּת'
                  ' דָּוִד הַמֶּלֶךְ, עָלָיו הַשָּׁלוֹם, עִם כָּל הָעֲשָׂרָה צַדִּיקִים, שֶׁיָּסְדוּ סֵפֶר תְּהִלִּים וּבִזְכוּת הַצַּדִּיק יְסוֹד עוֹלָם,'
                  ' נַ"חַל נ"וֹבֵעַ מְ"קוֹר חָ"כְמָה, רַבֵּנוּ נַחְמָן בֶּן פֵיגָא, זְכוּתוֹ יָגֵן עָלֵינוּ, אֲשֶׁר גִּלָּה וְתִקֵּן לוֹמַר אֵלּוּ'
                  ' הָעֲשָׂרָה קַפִּיטְל תְּהִלִּים בִּשְׁבִיל תִּקּוּן הַבְּרִית, וּבִזְכוּת כָּל הַצַּדִּיקִים וְהַחֲסִידִים הָאֲמִתִּיִּים,'
                  ' תְּזַכֵּנִי וּתְחָנֵּנִי, שֶׁאֶזְכֶּה בְּרַחֲמֶיךָ הָרַבִּים לְהוֹצִיא כָּל הַטִּפּוֹת קֶרִי, שֶׁיָּצְאוּ מִמֶּנִּי לְבַטָּלָה,'
                  ' בֵּין בְּשׁוֹגֵג בֵּין בְּמֵזִיד, בֵּין בְּאֹנֶס בֵּין בְּרָצוֹן, ',
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: '(אם יאמר חס ושלום בשביל מקרה שנזדמן '
                  'לו באותו הלילה, יאמר: וּבִפְרָט כָּל הַטִּפּוֹת שֶׁיָּצְאוּ מִמֶּנִּי בְּלַיְלָה זֶה עַל יְדֵי מִקְרֵה לַיְלָה,'
                  ' שֶׁקָּרָה לִי בַּעֲווֹנוֹתַי הָרַבִּים)',
              style: textStyleSimpleText_smallLight,
            ),
            TextSpan(
              text:
                  ' כֻּלָּם אֶזְכֶּה, בְּרַחֲמֶיךָ הָרַבִּים וּבְחֶמְלָתְךָ הַגְּדוֹלָה וּבְכֹחֲךָ הַגָּדוֹל, '
                  'לְהוֹצִיאָם מֵהַקְּלִפּוֹת וּמֵהַסִּטְרִין אָחֳרָנִין, מִכָּל הַמְּקוֹמוֹת שֶׁנָּפְלוּ וְנִתְפַּזְּרוּ וְנָפוֹצוּ וְנִדְּחוּ לְשָׁם, '
                  'וְאַל יִדַּח מִמְּךָ נִדָּח. וְתַכְנִיעַ, וּתְשַׁבֵּר, וְתַהֲרֹג, וּתְעַקֵּר, וּתְכַלֶּה, וּתְבַטֵּל כָּל הַקְּלִפּוֹת וְכָל '
                  'הָרוּחִין וְשֵׁדִין וְלִילִין, שֶׁנַּעֲשׂוּ וְנִבְרְאוּ וְנוֹצְרוּ עַל יְדֵי אֵלּוּ הַטִּפּוֹת, שֶׁיָּצְאוּ מִמֶּנִּי לְבַטָּלָה,'
                  ' וְתָסִיר מֵהֶם חִיּוּתָם, וְתוֹצִיא וְתִגְזֹל מֵהֶם הַחִיּוּת דִּקְדֻשָּׁה, וְכָל הַנִּיצוֹצוֹת הַקְּדוֹשִׁים שֶׁבָּלְעוּ.',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'רִבּוֹנוֹ שֶׁל עוֹלָם! אֵל חַי'
                  ' וְקַיָּם, חַי הַחַיִּים, מָלֵא רַחֲמִים, הַדָּן אֶת כָּל הָעוֹלָם לְכַף זְכוּת תָּמִיד, הֶחָפֵץ חֶסֶד וּמַרְבֶּה '
                  'לְהֵיטִיב. אָבִי אָבִי, גּוֹאֲלִי וּפוֹדִי. יָדַעְתִּי יְהֹוָה יָדַעְתִּי, כִּי אֲנִי בְּעַצְמִי הַחַיָּב וְהַפּוֹשֵׁעַ '
                  'אֲפִלּוּ בְּהַמִּקְרוֹת שֶׁנִּזְדַּמְּנוּ לִי בְּשׁוֹגֵג, כִּי לֹא שָׁמַרְתִּי אֶת הַמַּחֲשָׁבָה כְּלָל וְהִרְהַרְתִּי בַּיּוֹם,'
                  ' עַד שֶׁבָּאתִי לִידֵי טֻמְאָה בַּלַּיְלָה, וְעַל יְדֵי זֶה קִלְקַלְתִּי מַה שֶּׁקִּלְקַלְתִּי, וְגָרַמְתִּי מַה שֶּׁגָּרַמְתִּי,'
                  ' וְשִׁחַתְתִּי מַה שֶּׁשִּׁחַתְתִּי. אוֹי, אוֹי, אוֹי, אוֹיָה עַל נַפְשִׁי, אוֹי לְנַפְשִׁי, כִּי גָּמַלְתִּי לִי'
                  ' רָעָה. מָה אֹמַר, מָה אֲדַבֵּר, מָה אֶצְטַדָּק. מָה אֹמַר, מָה אֲדַבֵּר, מָה אֶצְטַדָּק. הָאֱלֹהִים מָצָא '
                  'אֶת עֲווֹנִי. הִנְנִי לְפָנֶיךָ בְּאַשְׁמָה רַבָּה, הִנְנִי לְפָנֶיךָ מָלֵא בּוּשָׁה וּכְלִמָּה, מָלֵא טִנּוּפִים '
                  'וְלִכְלוּכִים, מָלֵא תּוֹעֵבוֹת רָעוֹת, וְאֵין שׁוּם לָשׁוֹן בָּעוֹלָם שֶׁאוּכַל לְכַנּוֹת בּוֹ עֹצֶם הָרַחֲמָנוּת'
                  ' שֶׁיֵּשׁ עָלַי, כִּי רַע וָמַר, כִּי נָגַע עַד הַנֶּפֶשׁ, מַר לִי מְאֹד, אָבִי שֶׁבַּשָּׁמַיִם, מַר לִי מְאֹד,'
                  ' רִבּוֹן כָּל הָעוֹלָמִים. רְאֵה אַנְחָתִי וְאֶנְקָתִי, כִּי נַפְשִׁי מָרָה לִי מְאֹד, עַד אֲשֶׁר אֵינִי יוֹדֵעַ אֵיךְ'
                  ' אֲנִי יָכוֹל לִחְיוֹת מֵעֶצֶם מְרִירוּת נַפְשִׁי, אֲשֶׁר עַד גָּבְהֵי שָׁמַיִם יַגִּיעַ, כִּי קַצְתִּי בְּחַיַּי, לָמָּה'
                  ' לִי חַיִּים כָּאֵלֶּה, חַיִּים מָרִים וּמְרוּרִים מִמָּוֶת. אֶת "קֻבַּעַת כּוֹס הַתַּרְעֵלָה שָׁתִית, מָצִית, נַפְשִׁי".',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  'רִבּוֹנוֹ שֶׁל עוֹלָם! אַתָּה לְבַד יָדַעְתָּ רִבּוּי וְעֹצֶם הַפְּגָמִים'
                  ' הַגְּדוֹלִים, הָעֲצוּמִים וְהַנּוֹרָאִים, שֶׁנַּעֲשִׂים עַל יְדֵי זֶה בְּכָל הָעוֹלָמוֹת, וְעַתָּה אֵיךְ אוּכַל '
                  'לְתַקֵּן זֹאת וּבַמֶּה יִזְכֶּה נַעַר כָּמוֹנִי לְתַקֵּן אֶת אֲשֶׁר שִׁחַתְתִּי. אַךְ אַף עַל פִּי כֵן יָדַעְתִּי, '
                  'וַאֲנִי מַאֲמִין בֶּאֱמוּנָה שְׁלֵמָה, כִּי אֵין שׁוּם יֵאוּשׁ בָּעוֹלָם כְּלָל, וַעֲדַיִן יֵשׁ לִי תִּקְוָה, '
                  'וַעֲדַיִן לֹא אָבְדָה תּוֹחַלְתִּי מֵיְהֹוָה, כִּי "חַסְדֵּי יְהֹוָה כִּי לֹא תָמְנוּ, כִּי לֹא כָלוּ רַחֲמָיו".',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  'עַל כֵּן בָּאתִי לְפָנֶיךָ, יְהֹוָה אֱלֹהַי וֵאלֹהֵי אֲבוֹתַי, אֱלֹהֵי אַבְרָהָם, אֱלֹהֵי יִצְחָק וֵאלֹהֵי '
                  'יַעֲקֹב, אֱלֹהֵי כָּל הַצַּדִּיקִים וְהַחֲסִידִים הָאֲמִתִּיִּים וֵאלֹהֵי כָּל יִשְׂרָאֵל, אֱלֹהֵי הָרִאשׁוֹנִים '
                  'וְהָאַחֲרוֹנִים, שֶׁתְּרַחֵם עָלַי וְתַעֲשֶׂה אֶת אֲשֶׁר בְּחֻקֶּיךָ אֵלֵךְ וְאֶת מִשְׁפָּטֶיךָ אֶשְׁמֹר, וְתָכֹף אֶת '
                  'יִצְרִי לְהִשְׁתַּעְבֶּד לָּךְ, וְתִגְעַר בְּהַיֵּצֶר הָרָע וּתְגָרְשׁוֹ מִמֶּנִּי מֵעַתָּה וְעַד עוֹלָם, וְתִשְׁמְרֵנִי '
                  'וְתַצִּילֵנִי וּתְפַלְּטֵנִי מֵעַתָּה מִכָּל מִינֵי הִרְהוּרִים רָעִים וּמִמַּחֲשָׁבוֹת רָעוֹת וּמִפְּגַם הָרְאוּת'
                  ' וּמִפְּגַם הַדִּבּוּר, וְתַצִּילֵנוּ מֵעַתָּה מִכָּל מִינֵי פְּגַם הַבְּרִית שֶׁבָּעוֹלָם בְּמַחֲשָׁבָה, דִּבּוּר וּמַעֲשֶׂה,'
                  ' וְתִהְיֶה עִמִּי תָּמִיד וְתִשְׁמְרֵנִי וְתַצִּילֵנִי מִמִּקְרֶה, בֵּין בַּיּוֹם וּבֵין בַּלַּיְלָה, מֵעַתָּה וְעַד עוֹלָם.',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  'אָבִינוּ, מֶלֶךְ אֵל חַי וְקַיָּם, גּוֹאֵל חָזָק. שִׁטַּחְתִּי אֵלֶיךָ כַפָּי. הַצֵּל הַצֵּל, הוֹשִׁיעָה '
                  'הוֹשִׁיעָה, הַצֵּל לְקוּחִים לַמָּוֶת, הַצֵּל נִרְדָּף וְחַיָּב כָּמוֹנִי, הַצִּילֵנִי מִן הַשְּׁאוֹל תַּחְתִּיּוֹת. תֶּן לִי'
                  ' תִּקְוָה וְלֹא אֹבַד, חַס וְשָׁלוֹם, כִּי "מַה בֶּצַע בְּדָמִי, בְּרִדְתִּי אֶל שַׁחַת, הֲיוֹדְךָ עָפָר, הֲיַגִּיד '
                  'אֲמִתֶּךָ. דָלוּ עֵינַי לַמָּרוֹם, יְהֹוָה עָשְׁקָה לִי, עָרְבֵנִי, עֲרֹב עַבְדְּךָ לְטוֹב, אַל יַעַשְׁקֻנִי זֵדִים".'
                  ' כִּי אֵין לִי שׁוּם כֹּחַ אֶלָּא בְּפִי, אֵין לִי שׁוּם מָנוֹס וּמִבְטָח, כִּי אִם עָלֶיךָ לְבַד, עַל חֲסָדֶיךָ'
                  ' הָעֲצוּמִים לְבַד, עַל רַחֲמֶיךָ הַגְּדוֹלִים, עַל חֶמְלָתְךָ הָאֲמִתִּית, עַל חֲנִינוֹתֶיךָ הַנִּצְחִיּוֹת וְעַל כֹּחַ '
                  'וּזְכוּת הַצַּדִּיקִים, שֶׁשָּׁמְרוּ אֶת הַבְּרִית בְּתַכְלִית הַשְּׁלֵמוּת, שֶׁאֵין שְׁלֵמוּת אַחֲרָיו, בָּהֶם תָּמַכְתִּי'
                  ' יְתֵדוֹתַי, בָּהֶם אֶשָּׁעֵן וְאֶסָּמֵךְ, בִּזְכוּתָם וְכֹחָם אֶבְטַח וַאֲקַוֶּה, "כִּי לֹא תַעֲזֹב נַפְשִׁי לִשְׁאוֹל, '
                  'לֹא תִתֵּן חֲסִידְךָ לִרְאוֹת שָׁחַת". אֲהָהּ יְהֹוָה, מַלְּטֵנִי! אֲהָהּ יְהֹוָה, פְּדֵנִי! רְאֵה מְסֻכָּן כָּמוֹנִי'
                  ' טוֹרֵף בְּלֶב יַמִּים, "תְּהוֹם אֶל תְּהוֹם קוֹרֵא לְקוֹל צִנּוֹרֶיךָ, כָּל מִשְׁבָּרֶיךָ וְגַלֶּיךָ עָלַי עָבָרוּ.'
                  ' צוֹד צָדוּנִי כַּצִּפּוֹר, אֹיְבַי חִנָּם. צָמְתוּ בַבּוֹר חַיָּי, וַיַּדּוּ אֶבֶן בִּי. צָפוּ מַיִם עַל רֹאשִׁי,'
                  ' אָמַרְתִּי נִגְזָרְתִּי. קָרָאתִי שִׁמְךָ, יְהֹוָה, מִבּוֹר תַּחְתִּיּוֹת, קָרָאתִי שִׁמְךָ, יְהֹוָה, מִבּוֹר תַּחְתִּיּוֹת.',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'רִבּוֹנוֹ שֶׁל עוֹלָם! רִבּוֹנוֹ שֶׁל עוֹלָם! מָלֵא'
                  ' רַחֲמִים, מָלֵא חֶסֶד חִנָּם, מָלֵא חֲנִינוֹת, מָלֵא רַחֲמָנוּת, מָלֵא טוֹב, מָלֵא רָצוֹן. כְּבָר קִבַּלְנוּ'
                  ' עָלֵינוּ לִקְרֹא אֵלֶיךָ תָּמִיד, וְהִנְנִי מְקַיֵּם קַבָּלָתֵנוּ, וְהִנְנִי קוֹרֵא אֵלֶיךָ מִמָּקוֹם שָׁפָל כָּזֶה,'
                  ' מִמְּקוֹמוֹת מְגֻנִּים כָּאֵלֶּה. "מִמַּעֲמַקִּים קְרָאתִיךָ, יְהֹוָה", מֵעִמְקֵי עֲמָקִים, "מִן הַמֵּצַר קָרָאתִי יָהּ,'
                  ' עָנָנִי בַמֶּרְחָב יָהּ". וְאִם בַּעֲווֹנוֹתֵינוּ הָרַבִּים יָרַדְנוּ לְמָקוֹם שֶׁיָּרַדְנוּ, וְיָרַדְנוּ עַכְשָׁו '
                  'בְּעִקְבוֹת מְשִׁיחָא לִמְקוֹמוֹת נְמוּכִים וּשְׁפָלִים מְאֹד מְאֹד, שֶׁלֹּא יָרְדוּ יִשְׂרָאֵל לְתוֹכָם מֵעוֹלָם,'
                  ' כְּמוֹ שֶׁכָּתוּב: "וַתֵּרֶד פְּלָאִים, אֵין מְנַחֵם לָהּ": אַף עַל פִּי כֵן אֵין אָנוּ מְיָאֲשִׁים עַצְמֵנוּ,'
                  ' חַס וְשָׁלוֹם, בְּשׁוּם אֹפֶן בָּעוֹלָם כְּלָל, כִּי כְּבָר הִבְטַחְתָּנוּ לַהֲשִׁיבֵנוּ מִמְּצוּלוֹת יָם, כְּמוֹ '
                  'שֶׁכָּתוּב: "אָמַר אֲדֹנָי מִבָּשָׁן אָשִׁיב, אָשִׁיב מִמְּצוּלוֹת יָם". וּכְתִיב: "וְאַף גַּם זֹאת, בִּהְיוֹתָם '
                  'בְּאֶרֶץ אֹיְבֵיהֶם לֹא מְאַסְתִּים וְלֹא גְעַלְתִּים לְכַלֹּתָם לְהָפֵר בְּרִיתִי אִתָּם, כִּי אֲנִי יְהֹוָה אֱלֹהֵיהֶם".',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  'רִבּוֹנוֹ שֶׁל עוֹלָם! פְּתַח פִּיךָ לְאִלֵּם כָּמוֹנִי, וְתִשְׁלַח לִי דִּבּוּרִים מִמְּעוֹן קָדְשְׁךָ מִן הַשָּׁמַיִם, בְּאֹפֶן שֶׁאוּכַל'
                  ' לְנַצֵּחַ אוֹתְךָ, לְרַצּוֹת וּלְפַיֵּס אוֹתְךָ, שֶׁתְּקַבֵּל בְּרַחֲמֶיךָ הָרַבִּים וּבַחֲסָדֶיךָ הָעֲצוּמִים אֶת אֵלּוּ הָעֲשָׂרָה'
                  ' קַפִּיטְל תְּהִלִּים שֶׁאָמַרְתִּי לְפָנֶיךָ, כְּאִלּוּ אֲמָרָם דָּוִד הַמֶּלֶךְ, עָלָיו הַשָּׁלוֹם, בְּעַצְמוֹ. וְאַף עַל '
                  'פִּי שֶׁאֵינִי יוֹדֵעַ לְכַוֵּן שׁוּם כַּוָּנָה מֵהַכַּוָּנוֹת הָעֲצוּמוֹת וְהַנּוֹרָאוֹת, שֶׁיֵּשׁ בְּאֵלּוּ הָעֲשָׂרָה מִזְמוֹרִים,'
                  ' יְהִי רָצוֹן מִלְּפָנֶיךָ, יְהֹוָה אֱלֹהַי וֵאלֹהֵי אֲבוֹתַי, שֶׁתְּהֵא חֲשׁוּבָה לְפָנֶיךָ הָאֲמִירָה בַּפֶּה לְבַד,'
                  ' כְּאִלּוּ הִשַּׂגְתִּי וְכִוַּנְתִּי כָּל הַסּוֹדוֹת וְהַכַּוָּנוֹת שֶׁיֵּשׁ בָּהֶם, וְיִהְיוּ אֲמָרַי לְרָצוֹן לִפְנֵי אֲדוֹן כֹּל.'
                  ' וְהִנְנִי מַשְׁלִיךְ יְהָבִי עָלֶיךָ, וְהִנְנִי מְקַשֵּׁר עַצְמִי לְכָל הַצַּדִּיקִים הָאֲמִתִּיִּים שֶׁבְּדוֹרֵנוּ וּלְכָל הַצַּדִּיקִים'
                  ' הָאֲמִתִּיִּים, שׁוֹכְנֵי עָפָר, קְדוֹשִׁים אֲשֶׁר בָּאָרֶץ הֵמָּה, וּבִפְרָט לְהַצַּדִּיק יְסוֹד עוֹלָם, נַ"חַל נ"וֹבֵעַ'
                  ' מְ"קוֹר חָ"כְמָה, רַבֵּנוּ נַחְמָן בֶּן פֵיגָא, זְכוּתוֹ יָגֵן עָלֵינוּ אָמֵן. וְעַל דַּעְתָּם וְעַל כַּוָּנָתָם'
                  ' אָמַרְתִּי כָּל אֵלּוּ הָעֲשָׂרָה קַפִּיטְל תְּהִלִּים, וּבִזְכוּתָם וְכֹחָם אֶזְכֶּה לְעוֹרֵר וּלְגַלּוֹת כָּל הָעֲשָׂרָה מִינֵי'
                  ' נְגִינָה, שֶׁנֶּאֱמַר בָּהֶם סֵפֶר תְּהִלִּים, שֶׁהֵם: שִׁיר פָּשׁוּט, כָּפוּל, מְשֻׁלָּשׁ, מְרֻבָּע, שֶׁהֵם כְּלוּלִים '
                  'בְּשִׁמְךָ הַמְּיֻחָד, הַגָּדוֹל וְהַקָּדוֹשׁ. וּבִזְכוּת וְכֹחַ הַשְּׁנֵי שֵׁמוֹת הַקְּדוֹשִׁים הָאֵלּוּ בְּמִלּוּאָם, שֶׁהֵם '
                  '"אֵל אֱלֹהִים" ',
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: '(ויכוון: אל"ף למ"ד, אל"ף למ"ד ה"י יו"ד מ"ם)',
              style: textStyleSimpleText_smallLight,
            ),
            TextSpan(
              text: ' שֶׁהֵם עוֹלִים בְּמִסְפָּר תפ"ה',
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: ' [אַרְבַּע מֵאוֹת שְׁמוֹנִים וְחָמֵשׁ]',
              style: textStyleSimpleText_smallLight,
            ),
            TextSpan(
              text:
                  ', כְּמִסְפַּר תְּהִלִּים, בְּכֹחַ אֵלּוּ הַשֵּׁמוֹת תְּזַכֵּנִי לְהוֹצִיא כָּל הַטִּפּוֹת'
                  ' קֶרִי לְבַטָּלָה מִבֶּטֶן הַקְּלִפָּה שֶׁבְּלָעָם, אֲשֶׁר מִסְפַּר שְׁמָהּ עִם הָאוֹתִיּוֹת עוֹלֶה תפ"ה, שֶׁהִיא בַּקְּלִפָּה '
                  'כְּנֶגֶד קְדֻשַּׁת סֵפֶר תְּהִלִּים. וּבְכֹחַ אֵלּוּ הָעֲשָׂרָה מִזְמוֹרֵי תְּהִלִּים תְּעוֹרֵר הַשְּׁנֵי הַשֵּׁמוֹת הַקְּדוֹשִׁים '
                  '"אֵל אֱלֹהִים", וְתַהֲרֹג, וּתְשַׁבֵּר, וְתַכְנִיעַ, וּתְעַקֵּר, וּתְכַלֶּה וּתְבַטֵּל אֶת הַקְּלִפָּה הַזֹּאת שֶׁבְּלָעָם,'
                  ' וְתַכְרִיחַ אוֹתָהּ לְהַפְלִיט כָּל הַטִּפּוֹת הַקְּדוֹשׁוֹת מִבִּטְנָהּ וְקִרְבָּהּ, וְתִמְחֶה שְׁמָהּ וְזִכְרָהּ מִן הָעוֹלָם,'
                  ' וּתְקַיֵּם מִקְרָא שֶׁכָּתוּב: "חַ"יִל בָּ"לַע וַ"יְקִיאֶנּוּ, מִבִּטְנוֹ יוֹרִישֶׁנּוּ אֵל". וְתַהֲרֹג כָּל הַקְּלִפּוֹת,'
                  ' שֶׁנִּבְרְאוּ עַל יְדֵי אֵלּוּ הַטִּפּוֹת, וְתוֹצִיא וְתִגְזֹל מֵהֶם הַחִיּוּת דִּקְדֻשָּׁה. וְכָל הַנִּיצוֹצוֹת'
                  ' הַקְּדוֹשׁוֹת שֶׁבָּלְעוּ עַל יְדֵי פְּגַם חֵטְא זֶה, כֻּלָּם תּוֹצִיאֵם, וְתַחֲזֹר וּתְקַבְּצֵם בִּקְדֻשָּׁה שֵׁנִית, '
                  'וּתְזַכֵּנוּ לְקַבֵּל עָלֵינוּ עֹל מַלְכוּת שָׁמַיִם בְּאַהֲבָה תָּמִיד, וְנִזְכֶּה לַעֲסֹק כָּל יָמֵינוּ בְּתוֹרָה וּתְפִלָּה,'
                  ' וּמַעֲשִׂים טוֹבִים בֶּאֱמֶת וּבְלֵב שָׁלֵם, בְּאֹפֶן שֶׁנִּזְכֶּה לִבְרֹא גּוּפִים וְכֵלִים קְדוֹשִׁים לְכָל הַנְּשָׁמוֹת'
                  ' דְּאָזְלִין עַרְטִילָאִין עַל יְדֵי עֲווֹנוֹתֵינוּ הָרַבִּים, עַל יְדֵי פְּגַם הַטִּפּוֹת קֶרִי, שֶׁיָּצְאוּ מִמֶּנִּי לְבַטָּלָה.',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'רִבּוֹנוֹ שֶׁל עוֹלָם, אַמִּיץ כֹּחַ,'
                  ' וְרַב אוֹנִים! עֲשֵׂה מַה שֶּׁתַּעֲשֶׂה בְּרַחֲמֶיךָ הָרַבִּים בְּאֹפֶן שֶׁנִּזְכֶּה לְתַקֵּן פְּגַם הַבְּרִית, פְּגַם טִפֵּי'
                  ' הַמֹּחַ, בֵּין מַה שֶּׁפָּגַמְנוּ בָּזֶה בְּשׁוֹגֵג, בֵּין בְּמֵזִיד, בֵּין בְּאֹנֶס, בֵּין בְּרָצוֹן, עַל הַכֹּל תִּמְחַל'
                  ' וְתִסְלַח לִי, אֱלוֹהַּ סְלִיחוֹת, חַנּוּן הַמַּרְבֶּה לִסְלֹחַ, וְנִזְכֶּה לְתַקֵּן כָּל הַפְּגָמִים בִּשְׁלֵמוּת בְּחַיֵּינו'
                  ' בִּזְכוּת הַצַּדִּיקִים הַקְּדוֹשִׁים אֲשֶׁר בָּאָרֶץ הֵמָּה ',
              style: textStyleSimpleText,
            ),
            TextSpan(
              text: 'ּ(אם נמצא על קברו הקדוש יוסיף: '
                  'וּבִזְכוּת הַצַּדִּיק הַזֶּה הַשּׁוֹכֵן פֹּה, צַדִּיק יְסוֹד עוֹלָם נַחַל נוֹבֵעַ מְקוֹר חָכְמָה, אֲשֶׁר אֲנִי מְכַתֵּת'
                  ' רַגְלַי וְטִלְטַלְתִּי עַצְמִי בְּטִלְטוּל הַקָּשֶׁה בִּשְׁבִיל לָבוֹא הֵנָּה לְהִשְׁתַּטֵּחַ עַל קֶבֶר הַצַּדִּיק הָאֱמֶת'
                  ' הַקָּדוֹשׁ הַזֶּה אֲשֶׁר הִבְטִיחָנוּ בְּחַיָּיו הַקְּדוֹשִׁים, לַעֲמֹד בְּעֶזְרָתֵנוּ סֶלָה תָּמִיד, כְּשֶׁנָּבוֹא עַל'
                  ' קִבְרוֹ הַקָּדוֹשׁ וְנִתֵּן פְּרוּטָה לִצְדָקָה וְנֹאמַר אֵלּוּ הָעֲשָׂרָה קַפִּיטְל תְּהִלִּים. וְהִנֵּה עָשִׂיתִי מַה'
                  ' שֶּׁמֻּטָּל עָלַי, עֲשֵׂה מַה שֶּׁעָלֶיךָ)',
              style: textStyleSimpleText_smallLight,
            ),
            TextSpan(
              text:
                  '. וּמְחַל לִי, וּסְלַח לִי, וְכַפֵּר לִי עַל כָּל הַחֲטָאִים וְהָעֲווֹנוֹת'
                  ' וְהַפְּשָׁעִים, שֶׁחָטָאתִי וְשֶׁעָוִיתִי וְשֶׁפָּשַׁעְתִּי לְפָנֶיךָ בִּרְמַ"ח אֵיבָרַי וּשְׁסָ"ה גִּידַי, בְּמַחֲשָׁבָה, דִּבּוּר'
                  ' וּמַעֲשֶׂה, וּבַחֲמִשָּׁה חוּשִׁים וּבִשְׁאָר כֹּחוֹת הַגּוּף, וּבִפְרָט מַה שֶּׁחָטָאתִי וּפָשַׁעְתִּי וּפָגַמְתִּי נֶגְדְּךָ'
                  ' בִּפְגַם הַבְּרִית, שֶׁהוּא כְּלַל כָּל הַתּוֹרָה כֻּלָּהּ, "וְהָרַע בְּעֵינֶיךָ עָשִׂיתִי" מִנְּעוּרַי עַד הַיּוֹם הַזֶּה.'
                  ' עַל הַכֹּל תִּמְחַל וְתִסְלַח וּתְכַפֵּר, מָלֵא רַחֲמִים, וּתְמַלֵּא כָּל הַשֵּׁמוֹת שֶׁפָּגַמְתִּי בְּשִׁמְךָ הַגָּדוֹל. '
                  '"הֶרֶב כַּבְּסֵנִי מֵעֲוֹנִי, וּמֵחַטָּאתִי טַהֲרֵנִי. תְּחַטְּאֵנִי בְאֵזוֹב וְאֶטְהָר, תְּכַבְּסֵנִי, וּמִשֶּׁלֶג אַלְבִּין.'
                  ' תַּשְׁמִיעֵנִי שָׂשׂוֹן וְשִׂמְחָה, תָּגֵלְנָה עֲצָמוֹת דִּכִּיתָ. הַסְתֵּר פָּנֶיךָ מֵחֲטָאָי, וְכָל עֲוֹנוֹתַי מְחֵה". '
                  'מְחֵה פְּשָׁעַי לְמַעַנְךָ, כָּאָמוּר: "אָנֹכִי אָנֹכִי, הוּא מוֹחֶה פְשָׁעֶיךָ לְמַעֲנִי, וְחַטֹּאתֶיךָ לֹא אֶזְכּוֹר".',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  ' וְתִמָּלֵא עָלַי בְּרַחֲמִים, וְתִהְיֶה בְּעֶזְרִי תָּמִיד בִּזְכוּת וְכֹחַ הַצַּדִּיקִים הָאֲמִתִּיִּים, וְתִשְׁמְרֵנִי וְתַצִּילֵנִי תָּמִיד,'
                  ' וְתִתֵּן לִי כֹּחַ לְהִתְגַּבֵּר עַל יִצְרִי וְלָכֹף וּלְשַׁבֵּר אֶת תַּאֲוָתִי, וְלֹא אֶפְגֹּם עוֹד מַה שֶּׁפָּגַמְתִּי,'
                  ' וְלֹא אֶעֱשֶׂה עוֹד הָרַע בְּעֵינֶיךָ, וְלֹא אָשׁוּב עוֹד לְכִסְלָה. אִם אָוֶן פָּעַלְתִּי, לֹא אוֹסִיף,'
                  ' כִּי כְּבָר הִבְטַחְתָּנוּ, שֶׁגַּם עַל זֶה מוֹעִיל תְּפִלָּה וּבַקָּשָׁה לְהִנָּצֵל לְהַבָּא, בְּרַחֲמֶיךָ הָאֲמִתִּיִּים,'
                  ' מִן הַיֵּצֶר הָרַע וְכַת דִּילֵהּ. ',
              style: textStyleSimpleText,
            ),
            TextSpan(
              text:
                  '(אם נמצא על קברו הקדוש יוסיף: וּבִפְרָט עַל מְקוֹם צִיּוּן '
                  'הַקָּדוֹשׁ הַזֶּה, עָזְרֵנִי בִּזְכוּת הַצַּדִּיקִים הַגְּנוּזִים פֹּה)',
              style: textStyleSimpleText_smallLight,
            ),
            TextSpan(
              text: ', וְרַחֵם עָלַי, וְתֶן לִי כֹּחַ וּגְבוּרָה מֵאִתְּךָ,'
                  ' שֶׁאֶזְכֶּה לְהִתְגַּבֵּר וְלִכְבֹּשׁ אֶת יִצְרִי תָּמִיד, עַד שֶׁאֶזְכֶּה בְּרַחֲמֶיךָ לְגָרְשׁוֹ וּלְסַלְּקוֹ וּלְבַטְּלוֹ מֵעָלַי'
                  ' לְגַמְרֵי מֵעַתָּה וְעַד עוֹלָם, כִּי כְּבָר "כָּלוּ בְיָגוֹן חַיָּי, וּשְׁנוֹתַי בָּאֲנָחָה, כָּשַׁל בַּעֲוֹנִי כֹחִי,'
                  ' וַעֲצָמַי עָשֵׁשׁוּ", עַד אֲשֶׁר כָּשַׁל כֹּחַ הַסַּבָּל. רַחֵם עָלַי, אָבִי, אָב הָרַחֲמָן, רַחֵם עָלַי, שׁוֹמֵעַ תְּפִלָּה,'
                  ' חוּס וַחֲמֹל עָלַי, שׁוֹמֵעַ צְעָקָה, שׁוֹמֵעַ אֲנָחָה, שׁוֹמֵעַ אֲנָקָה, רַחֵם רַחֵם, הַצֵּל הַצֵּל, הוֹשִׁיעָה'
                  ' הוֹשִׁיעָה! "אַל יִפֹּל דָּמִי אַרְצָה" לְפָנֶיךָ, אַל תִּתֵּן לְשַׁחַת נַפְשִׁי, "הַצִּילֵנִי מִדָּמִים, אֱלֹהִים,'
                  ' אֱלֹהֵי תְשׁוּעָתִי. תְּרַנֵּן לְשׁוֹנִי צִדְקָתֶךָ". חוּסָה עָלַי, כְּרֹב רַחֲמֶיךָ, כְּרֹב חֲסָדֶיךָ, יֶהֱמוּ '
                  'נָא מֵעֶיךָ וַחֲנִינוֹתֶיךָ עַל עֲלוּב נֶפֶשׁ כָּמוֹנִי, עַל נִרְדָּף כָּמוֹנִי, עַל מְלֻכְלָךְ בַּחֲטָאִים כָּמוֹנִי,'
                  ' עַל חֲסַר דֵּעָה, חֲסַר עֵצָה כָּמוֹנִי, כִּי לְךָ לְבַד עֵינֵינוּ תְלוּיוֹת, לְךָ לְבַד רַעְיוֹנַי צוֹפִיּוֹת,'
                  ' "דַּלּוּ עֵינַי לַמָּרוֹם", עֲזֹר נָא, הוֹשִׁיעָה נָּא, חוּס וַחֲמֹל נָא עָלַי וְהוֹשִׁיעֵנִי לָשׁוּב אֵלֶיךָ'
                  ' בִּתְשׁוּבָה שְׁלֵמָה, בֶּאֱמֶת וּבְלֵב שָׁלֵם, וְאֶזְכֶּה לִהְיוֹת תָּמִיד כִּרְצוֹנְךָ הַטּוֹב מֵעַתָּה וְעַד עוֹלָם.'
                  ' "כְּחַסְדְּךָ חַיֵּינִי, וְאֶשְׁמְרָה עֵדוּת פִּיךָ. לֵב טָהוֹר בְּרָא לִי אֱלֹהִים, וְרוּחַ נָכוֹן חַדֵּשׁ בְּקִרְבִּי".',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  'וּבְכֵן, יְהִי רָצוֹן מִלְּפָנֶיךָ, יְהֹוָה אֱלֹהֵינוּ וֵאלֹהֵי '
                  'אֲבוֹתֵינוּ, אֲדוֹן הַשִּׂמְחָה וְהַחֶדְוָה, אֲשֶׁר לְפָנֶיךָ אֵין שׁוּם עַצְבוּת כְּלָל לְעוֹלָם,'
                  ' כְּמוֹ שֶׁכָּתוּב: "הוֹד וְהָדָר לְפָנָיו, עֹז וְחֶדְוָה בִּמְקוֹמוֹ". שֶׁתַּעַזְרֵנִי בְּרַחֲמֶיךָ '
                  'הָעֲצוּמִים וּתְזַכֵּנִי לִהְיוֹת בְּשִׂמְחָה תָּמִיד. מְשַׂמֵּחַ נַפְשׁוֹת עֲגוּמִים, שַׂמַּח נַפְשִׁי'
                  ' הָאֻמְלָלָה מְאֹד, הָעֲלוּבָה מְאֹד, הָעֲיֵפָה וְהַצְּמֵאָה וְהָרְעֵבָה אֵלֶיךָ מְאֹד, הָסֵר מִמֶּנִּי'
                  ' יָגוֹן וַאֲנָחָה, "שַׂמֵּחַ נֶפֶשׁ עַבְדֶּךָ, כִּי אֵלֶיךָ, יְהֹוָה, נַפְשִׁי אֶשָּׂא. תּוֹדִיעֵנִי אֹרַח'
                  ' חַיִּים. שֹׂבַע שְׂמָחוֹת אֶת פָּנֶיךָ, נְעִימוֹת בִּימִינְךָ נֶצַח. הָשִׁיבָה לִי שְׂשׂוֹן'
                  ' יִשְׁעֶךָ, וְרוּחַ נְדִיבָה תִסְמְכֵנִי". שַׂבְּעֵנִי מִטּוּבֶךָ, וְשַׂמַּח נַפְשִׁי בִּישׁוּעָתֶךָ,'
                  ' וְטַהֵר לִבִּי לְעָבְדְּךָ בֶּאֱמֶת. "עוּרָה כְבוֹדִי, עוּרָה הַנֵּבֶל וְכִנּוֹר, אָעִירָה'
                  ' שָׁחַר". זַכֵּנוּ לְכָל הָעֲשָׂרָה מִינֵי נְגִינָה דִּקְדֻשָּׁה, שֶׁהֵם מַכְנִיעִים וּמְתַקְּנִים'
                  ' פְּגַם הַבְּרִית, כָּאָמוּר: "אֲבָרֵךְ אֶת יְהֹוָה אֲשֶׁר יְעָצָנִי, אַף לֵילוֹת יִסְּרוּנִי'
                  ' כִלְיוֹתָי. לְדָוִד מַשְׂכִּיל, אַשְׁרֵי נְשׂוּי פֶּשַׁע כְּסוּי חַטָּאָה. בַּיִת וָהוֹן נַחֲלַת'
                  ' אָבוֹת, וּמֵיְהֹוָה אִשָּׁה מַשְׂכָּלֶת. יוֹמָם יְצַוֶּה יְהֹוָה חַסְדּוֹ, וּבַלַּיְלָה שִׁירֹה עִמִּי,'
                  ' תְּפִלָּה לְאֵל חַיָּי. לַמְנַצֵּחַ אַל תַּשְׁחֵת לְדָוִד מִכְתָּם בִּשְׁלֹחַ שָׁאוּל וַיִּשְׁמְרוּ אֶת הַבַּיִת'
                  ' לַהֲמִיתוֹ. אֶזְכְּרָה נְגִינָתִי בַּלָּיְלָה, עִם לְבָבִי אָשִׂיחָה וַיְחַפֵּשׂ רוּחִי. הֲיֵאָכֵל'
                  ' תָּפֵל מִבְּלִי מֶלַח, אִם יֵשׁ טַעַם בְּרִיר חֲלָמוּת. פֶּן תִּתֵּן לַאֲחֵרִים הוֹדֶךָ וּשְׁנוֹתֶיךָ'
                  ' לְאַכְזָרִי. וְלֹא אָמַר, אַיֵּה אֱלֹהַי עֹשָׂי הַנּוֹתֵן זְמִירוֹת בַּלָּיְלָה. שֶׁקֶר הַחֵן וְהֶבֶל'
                  ' הַיֹּפִי, אִשָּׁה יִרְאַת יְהֹוָה הִיא תִתְהַלָּל". וְנֶאֱמַר: "הַלְלוּיָהּ, הַלְלוּ אֵל בְּקָדְשׁוֹ,'
                  ' הַלְלוּהוּ בִּרְקִיעַ עֻזֹּו: הַלְלוּהוּ בִגְבוּרוֹתָיו, הַלְלוּהוּ כְּרֹב גֻּדְלוֹ: הַלְלוּהוּ '
                  'בְּתֵקַע שׁוֹפָר, הַלְלוּהוּ בְּנֵבֶל וְכִנּוֹר: הַלְלוּהוּ בְּתֹף וּמָחוֹל הַלְלוּהוּ בְּמִנִּים וְעֻגָּב:'
                  ' הַלְלוּהוּ בְּצִלְצְלֵי שָׁמַע, הַלְלוּהוּ בְּצִלְצְלֵי תְרוּעָה: כֹּל הַנְּשָׁמָה תְּהַלֵּל יָהּ הַלְלוּיָהּ":',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      CustomRichText(
        textAlign: TextAlign.justify,
        textSpan: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text:
                  'רִבּוֹנוֹ שֶׁל עוֹלָם! תְּקַע בְּשׁוֹפָר גָּדוֹל לְחֵרוּתֵנוּ,'
                  ' וְשָׂא נֵס לְקַבֵּץ גָּלֻיּוֹתֵינוּ, וְקָרֵב פְּזוּרֵנוּ מִבֵּין הַגּוֹיִם, וּנְפוּצוֹתֵינוּ כַּנֵּס מִיַּרְכְּתֵי'
                  ' אָרֶץ. וְקַבֵּץ נִדָּחֵנוּ יַחַד מֵאַרְבַּע כַּנְפוֹת הָאָרֶץ לְאַרְצֵנוּ, וְקַיֵּם בָּנוּ מִקְרָא שֶׁכָּתוּב: "וְשָׁב'
                  ' יְהֹוָה אֱלֹהֶיךָ אֶת שְׁבוּתְךָ וְרִחֲמֶךָ, וְשָׁב וְקִבֶּצְךָ מִכָּל הָעַמִּים, אֲשֶׁר הֱפִיצְךָ יְהֹוָה אֱלֹהֶיךָ '
                  'שָׁמָּה. אִם יִהְיֶה נִדָּחֲךָ בִּקְצֵה הַשָּׁמָיִם, מִשָּׁם יְקַבֶּצְךָ יְהֹוָה אֱלֹהֶיךָ וּמִשָּׁם יִקָּחֶךָ. וֶהֱבִיאֲךָ '
                  'יְהֹוָה אֱלֹהֶיךָ אֶל הָאָרֶץ, אֲשֶׁר יָרְשׁוּ אֲבוֹתֶיךָ, וִירִשְׁתָּהּ וְהֵיטִיבְךָ, וְהִרְבְּךָ מֵאֲבוֹתֶיךָ". '
                  'וְנֶאֱמַר: "נְאֻם יְהֹוָה אֱלֹהִים, מְקַבֵּץ נִדְחֵי יִשְׂרָאֵל, עוֹד אֲקַבֵּץ עָלָיו לְנִקְבָּצָיו". וְנֶאֱמַר:'
                  ' "בּוֹנֵה יְרוּשָׁלַיִם יְהֹוָה, נִדְחֵי יִשְׂרָאֵל יְכַנֵּס". וּתְמַהֵר וְתָחִישׁ לְגָאֳלֵנוּ, וְתָבִיא לָנוּ'
                  ' אֶת מְשִׁיחַ צִדְקֵנוּ, וְתִבְנֶה אֶת בֵּית קָדְשֵׁנוּ וְתִפְאַרְתֵּנוּ, וַהֲבִיאֵנוּ לְצִיּוֹן עִירְךָ בְּרִנָּה,'
                  ' וְלִירוּשָׁלַיִם בֵּית מִקְדָשְׁךָ בְּשִׂמְחַת עוֹלָם. כְּמוֹ שֶׁכָּתוּב: "וּפְדוּיֵי יְהֹוָה יְשׁוּבוּן, וּבָאוּ'
                  ' צִיּוֹן בְּרִנָּה, וְשִׂמְחַת עוֹלָם עַל רֹאשָׁם, שָׂשׂוֹן וְשִׂמְחָה יַשִּׂיגוּ, וְנָסוּ יָגוֹן וַאֲנָחָה". וְנֶאֱמַר:'
                  ' "כִּי בְּשִׂמְחָה תֵצֵאוּ, וּבְשָׁלוֹם תּוּבָלוּן, הֶהָרִים וְהַגְּבָעוֹת יִפְצְחוּ לִפְנֵיכֶם רִנָּה,'
                  ' וְכָל עֲצֵי הַשָּׂדֶה יִמְחֲאוּ כָף". וְנֶאֱמַר: "כִּי נִחַם יְהֹוָה צִיּוֹן, נִחַם כָּל חָרְבוֹתֶיהָ,'
                  ' וַיָּשֶׂם מִדְבָּרָהּ כְּעֵדֶן וְעַרְבָתָהּ כְּגַן יְהֹוָה, שָׂשׂוֹן וְשִׂמְחָה יִמָּצֵא בָהּ, תּוֹדָה וְקוֹל'
                  ' זִמְרָה. שִׂמְחוּ בַיהֹוָה וְגִילוּ צַדִּיקִים, וְהַרְנִינוּ כָּל יִשְׁרֵי לֵב. אוֹר זָרוּעַ לַצַּדִּיק,'
                  ' וּלְיִשְׁרֵי לֵב שִׂמְחָה. שִׂמְחוּ צַדִּיקִים בַּיהֹוָה, וְהוֹדוּ לְזֵכֶר קָדְשׁוֹ". אָמֵן נֶצַח סֶלָה וָעֶד.',
              style: textStyleSimpleText,
            ),
          ],
        ),
      ),
      SizedBox(height: shortSpace),
      SizedBox(height: shortSpace),
    ]);
  }
}
