// package imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
//
//
////////////////////////////////
/////// blessing squres ////////
////////////////////////////////

class NamesContainer extends StatelessWidget {
  final String titleString;
  final List<String> names;

  NamesContainer({
    required this.names,
    required this.titleString,
  });

  @override
  Widget build(BuildContext context) {
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

    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        children: [
          Text(titleString, style: textStyle2),
          const SizedBox(height: 5),
          ...names.map((name) => Column(
                children: [
                  Text(name, style: textStyle1, textAlign: TextAlign.center),
                  const SizedBox(height: 5),
                ],
              )),
        ],
      ),
    );
  }
}

//
//
//
////////////////////////////////
/////// blessing widget ////////
////////////////////////////////

class BlessingWidget extends StatelessWidget {
  // define shadow variabels
  final BoxShadow boxShadowMenuLine =
      BoxShadow(color: Color(0xFFc4c4c4), spreadRadius: 0, blurRadius: 4);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                NamesContainer(
                  titleString: 'לרפואת',
                  names: [
                    'הרב אופיר אור בן תמר שליט"א',
                    'הרב אליעזר ברלנד בן עטיה שליט"א',
                    'רועי טמסוט בן שושנה',
                    'דור נחמיאס בן אסתר',
                    'מור  נחמיאס בת נורית',
                    'ליאור בן מור',
                  ],
                ),
                const SizedBox(height: 15),
                NamesContainer(
                  titleString: 'לעילוי נשמת',
                  names: [
                    'מרים בת רחל',
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              children: [
                NamesContainer(
                  titleString: 'להצלחת',
                  names: [
                    'הרב אופיר אור בן תמר שליט"א',
                    'הרב אליעזר ברלנד בן עטיה שליט"א',
                    'רועי טמסוט בן שושנה',
                    'דור נחמיאס בן אסתר',
                    'מור  נחמיאס בת נורית',
                    'אריאל אשר בן מרים',
                    'שירז נועה בת מרים',
                    'יהודה בן שירז',
                  ],
                ),
                const SizedBox(height: 15),
                // NamesContainer(
                //   titleString: 'לזיווג הגון',
                //   names: [
                //     'רות בת חוה',
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
