// package imports
import 'package:flutter/material.dart';

// my imports
import 'custom_text_widget.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    Key? key,
    required this.top,
    required this.asset,
  }) : super(key: key);

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Container(
        height: 480,
        width: MediaQuery.of(context).size.width,
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Image.asset(
            "$asset",
          ),
        ),
      ),
    );
  }
}

class ParallaxWidgetText extends StatelessWidget {
  const ParallaxWidgetText({
    Key? key,
    required this.top,
    required this.main_text,
    required this.sub_text,
    required this.opacity,
  }) : super(key: key);

  final double top;
  final String main_text;
  final String sub_text;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: MediaQuery.of(context).size.width,
      top: top + 80,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CustomRichText(
          textAlign: TextAlign.center,
          alignment: Alignment.center,
          textSpan: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: main_text,
                style: TextStyle(

                    fontSize: 24,
                    fontFamily: 'DavidLibre',
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 5.0,
                        color: Color(0xff000000).withOpacity(0.1 * opacity),
                      ),
                    ],
                    color: Color(0xFF3F3F3F).withOpacity(0.35 * opacity)),
              ),
              TextSpan(
                text: sub_text,
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'DavidLibre',
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 4.0,
                        color: Color(0xff000000).withOpacity(0.3 * opacity),
                      ),
                    ],
                    color: Color(0xFF3F3F3F).withOpacity(0.6 * opacity)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
