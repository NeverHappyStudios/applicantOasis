import 'package:flutter/material.dart';

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
          style: style,
          textAlign: textAlign,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textScaleFactor: textScaleFactor,
          textWidthBasis: textWidthBasis,
        )
      ],
    );
  }
}
