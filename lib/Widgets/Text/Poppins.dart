import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Poppins extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  final Color? backgroundColor;
  final Color? color;
  final Locale? styleLocale;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final TextDecoration? decoration;
  final double? height;
  final TextLeadingDistribution? leadingDistribution;
  final Paint? foreground;
  final Paint? background;
  final List<Shadow>? shadows;
  final List<FontFeature>? fontFeatures;
  final FontVariation? fontVariation;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final String? debuglabel;
  final String? fontfamily;
  final List<String>? fontfamilyfallback;
  final String? package;
  final TextOverflow? styleOverflow;
  final TextStyle? textStyle;

  Poppins(
      {required this.title,
      this.style,
      this.strutStyle,
      this.textAlign,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.textScaler,
      this.maxLines,
      this.semanticsLabel,
      this.textWidthBasis,
      this.textHeightBehavior,
      this.selectionColor,
      this.backgroundColor,
      this.color,
      this.fontSize,
      this.fontStyle,
      this.fontWeight,
      this.letterSpacing,
      this.wordSpacing,
      this.textBaseline,
      this.decoration,
      this.height,
      this.leadingDistribution,
      this.foreground,
      this.background,
      this.shadows,
      this.fontFeatures,
      this.fontVariation,
      this.decorationColor,
      this.decorationStyle,
      this.decorationThickness,
      this.debuglabel,
      this.fontfamily,
      this.fontfamilyfallback,
      this.package,
      this.styleOverflow,
      this.textStyle,
      this.styleLocale});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
      style: GoogleFonts.poppins(
          background: background,
          backgroundColor: backgroundColor,
          color: color,
          decoration: decoration,
          decorationColor: backgroundColor,
          decorationStyle: decorationStyle,
          fontFeatures: fontFeatures,
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          foreground: foreground,
          height: height,
          letterSpacing: letterSpacing,
          shadows: shadows,
          textStyle: textStyle,
          textBaseline: textBaseline,
          wordSpacing: wordSpacing,
          locale: styleLocale),
    );
  }
}
