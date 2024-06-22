
import 'package:flutter/material.dart';

//
//
//
///////////////////////
// Custom text class //
///////////////////////

class CustomRichText extends StatelessWidget {
  final TextSpan textSpan;
  final TextDirection textDirection;
  final Alignment alignment;
  final TextAlign textAlign;

  const CustomRichText({
    required this.textSpan,
    this.textDirection = TextDirection.rtl,
    this.alignment = Alignment.topRight,
    this.textAlign = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: RichText(
        textDirection: textDirection,
        textAlign: textAlign,
        text: textSpan,
      ),
    );
  }
}










//
//
//
///////////////////////
// Custom text class //
///////////////////////







