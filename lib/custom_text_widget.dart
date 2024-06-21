
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

  const CustomRichText({
    required this.textSpan,
    this.textDirection = TextDirection.rtl,
    this.alignment = Alignment.topRight, // Default alignment
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: RichText(
        textDirection: textDirection ?? TextDirection.rtl,
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







