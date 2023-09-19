import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutlinedText extends StatelessWidget {
  const OutlinedText(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softwrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.outlineColor,
    this.textColor,
    required this.fFont,
    required this.fontSize,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softwrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;
  final Color? outlineColor;
  final Color? textColor;
  final Text fFont;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          data,
          key: key,
          locale: locale,
          maxLines: maxLines,
          overflow: overflow,
          selectionColor: selectionColor,
          semanticsLabel: semanticsLabel,
          softWrap: softwrap,
          strutStyle: strutStyle,
          style: GoogleFonts.raleway(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..color = Colors.black,
          ),
          textAlign: textAlign,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textScaleFactor: textScaleFactor,
          textWidthBasis: textWidthBasis,
        ),
        Text(
          data,
          key: key,
          locale: locale,
          maxLines: maxLines,
          overflow: overflow,
          selectionColor: selectionColor,
          semanticsLabel: semanticsLabel,
          softWrap: softwrap,
          strutStyle: strutStyle,
          style: style,
          textAlign: textAlign,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textScaleFactor: textScaleFactor,
          textWidthBasis: textWidthBasis,
        ),
      ],
    );
  }
}
