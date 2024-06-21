//
// main page related widgets
//

// package imports
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// my imports
import 'theme_widgets.dart';

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
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      surfaceTintColor: Theme.of(context).colorScheme.background,
      title: Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 1),
              SizedBox(
                height: 50,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Switch(
                    value: isDarkMode
                        ? true
                        : false,
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
            child: Text(appTitleText),
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
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.only(left: 1.0, right: 1.0, top: 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Spacer between elements
              const SizedBox(height: 15),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [boxShadowMainImg],
                ),
                height: 300,
                width: MediaQuery.of(context).size.width * 0.93,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            30), // Same border radius as the container
                        child: Image.asset(
                            vars.mainImgPath[randomIndex_main_img],
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Text(vars.mainImgText[randomIndex],
                              textAlign: TextAlign.center,
                              style: textStyleMainImg),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 25),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SC_birkotHashar()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('ברכות השחר', style: textStyleMenuLine),
                        const SizedBox(width: 12),
                        Image.asset(
                            isDarkMode
                                ? 'assets/menuIcon_birchotShahar_white.png'
                                : 'assets/menuIcon_birchotShahar.png',
                            width: 28,
                            height: 28),
                      ]),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SC_ksOnBed()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('ק"ש שעל המיטה', style: textStyleMenuLine),
                        const SizedBox(width: 16),
                        Image.asset(
                            isDarkMode
                                ? 'assets/menuIcon_KsOnBed_white.png'
                                : 'assets/menuIcon_KsOnBed.png',
                            width: 22,
                            height: 22),
                      ]),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SC_tikonHazot(isDarkMode: isDarkMode)));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('תיקון חצות', style: textStyleMenuLine),
                      const SizedBox(width: 16),
                      Image.asset(
                          isDarkMode
                              ? 'assets/menuIcon_hazot_white.png'
                              : 'assets/menuIcon_hazot.png',
                          width: 22,
                          height: 22),
                    ],
                  ),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SC_sederBoker()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('סדר הבוקר', style: textStyleMenuLine),
                      const SizedBox(width: 10),
                      Image.asset(
                          isDarkMode
                              ? 'assets/menuIcon_boker_white.png'
                              : 'assets/menuIcon_boker.png',
                          width: 30,
                          height: 30),
                    ],
                  ),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SC_hitkashrom()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('התקשרות לצדיק', style: textStyleMenuLine),
                      const SizedBox(width: 10),
                      Image.asset(
                          isDarkMode
                              ? 'assets/menuIcon_tzadik_white.png'
                              : 'assets/menuIcon_tzadik.png',
                          width: 30,
                          height: 30),
                    ],
                  ),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SC_tikonHaklali()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('תיקון הכללי', style: textStyleMenuLine),
                      const SizedBox(width: 8),
                      Image.asset(
                          isDarkMode
                              ? 'assets/menuIcon_klali_white.png'
                              : 'assets/menuIcon_klali.png',
                          width: 32,
                          height: 32),
                    ],
                  ),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SC_prakimNivharim()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('פרקים נבחרים', style: textStyleMenuLine),
                      const SizedBox(width: 10),
                      Image.asset(
                          isDarkMode
                              ? 'assets/menuIcon_nivharim_white.png'
                              : 'assets/menuIcon_nivharim.png',
                          width: 30,
                          height: 30),
                    ],
                  ),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SC_timeToTora()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('עיתים לתורה', style: textStyleMenuLine),
                      const SizedBox(width: 12),
                      Image.asset(
                          isDarkMode
                              ? 'assets/menuIcon_Tora_white.png'
                              : 'assets/menuIcon_Tora.png',
                          width: 28,
                          height: 28),
                    ],
                  ),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SC_halahot()));
                },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [boxShadowMenuLine]),
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('הלכות', style: textStyleMenuLine),
                      const SizedBox(width: 12),
                      Image.asset(
                          isDarkMode
                              ? 'assets/menuIcon_halahot_white.png'
                              : 'assets/menuIcon_halahot.png',
                          width: 28,
                          height: 28),
                    ],
                  ),
                ),
              ),

              // Spacer between elements
              const SizedBox(height: 40),

              CustomRichText(
                alignment: Alignment.center,
                textSpan: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'בואו לעקוב אחרינו!',
                        style: textStyleSimpleText2),
                  ],
                ),
              ),

              Container(
                height: 75,
                width: MediaQuery.of(context).size.width * 0.93,
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: _openBrowser_money,
                      child: Image.asset(
                        isDarkMode
                            ? 'assets/money.png'
                            : 'assets/money_white.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 30),
                    GestureDetector(
                      onTap: _openBrowser_facebook,
                      child: Image.asset(
                        isDarkMode
                            ? 'assets/facebook.png'
                            : 'assets/facebook_white.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 30),
                    GestureDetector(
                      onTap: _openBrowser_instagram,
                      child: Image.asset(
                        isDarkMode
                            ? 'assets/instagram.png'
                            : 'assets/instagram_white.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              Text('קופה לצדקה ניתן להשיג פה', style: textStyleSimpleText2),
              Text('0509980165 - רות', style: textStyleSimpleText2),

              // Spacer between elements
              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                        isDarkMode
                            ? 'assets/logo_noText_white.png'
                            : 'assets/logo_noText.png',
                        width: 80,
                        height: 80),
                    const SizedBox(height: 10),
                    Text('ק"ק בני הנעורים', style: textStyleSimpleText2),
                    Text('ע"ש מוהר"ן מברסלב זיע"א',
                        style: textStyleSimpleText2),
                    Text('בראשות הרב אופיר אור שליט"א',
                        style: textStyleSimpleText2),
                  ],
                ),
              ),

              // Spacer between elements
              SizedBox(height: 40, width: MediaQuery.of(context).size.width),

              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).colorScheme.primary,
                                boxShadow: [boxShadowMenuLine]),
                            padding: const EdgeInsets.all(16),
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text('לרפואת', style: textStyleSimpleText3),
                                const SizedBox(height: 5),
                                Text('הרב אופיר אור בן תמר שליט"א', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                                Text('הרב אליעזר ברלנד בן עטיה שליט"א', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                                Text('רועי טמסוט בן חוה', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                                Text('דור נחמיאס בן אסתר', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),

                          const SizedBox(height: 15),

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).colorScheme.primary,
                                boxShadow: [boxShadowMenuLine]),
                            padding: const EdgeInsets.all(16),
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text('לעילוי נשמת',
                                    style: textStyleSimpleText3),
                                const SizedBox(height: 5),
                                Text('מכלוף בן ברידגט',
                                    style: textStyleSimpleText4),
                                Text('משה בן יעקב',
                                    style: textStyleSimpleText4),
                                Text('יעקב בן משה',
                                    style: textStyleSimpleText4),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).colorScheme.primary,
                                boxShadow: [boxShadowMenuLine]),
                            padding: const EdgeInsets.all(16),
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text('להצלחת', style: textStyleSimpleText3),
                                const SizedBox(height: 5),
                                Text('הרב אופיר אור בן תמר שליט"א', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                                Text('הרב אליעזר ברלנד בן עטיה שליט"א', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                                Text('רועי טמסוט בן חוה', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                                Text('דור נחמיאס בן אסתר', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                                Text('מור נחמיאס בן נורית', style: textStyleSimpleText4,
                                  textAlign: TextAlign.center,),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),

                          const SizedBox(height: 15),

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).colorScheme.primary,
                                boxShadow: [boxShadowMenuLine]),
                            padding: const EdgeInsets.all(16),
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text('לזיוג הגון',
                                    style: textStyleSimpleText3),
                                const SizedBox(height: 5),
                                Text('מכלוף בן ברידגט',
                                    style: textStyleSimpleText4),
                                Text('משה בן יעקב',
                                    style: textStyleSimpleText4),
                                Text('יעקב בן משה',
                                    style: textStyleSimpleText4),
                                Text('מרים בת חוה',
                                    style: textStyleSimpleText4),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Spacer between elements
              SizedBox(height: 30, width: MediaQuery.of(context).size.width),
            ], // children
          ),
        ),
      ),
    ),

