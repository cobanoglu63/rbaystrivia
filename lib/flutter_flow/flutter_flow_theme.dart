import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFFFF0005);
  static const Color secondaryColor = Color(0xFF00FFE1);
  static const Color tertiaryColor = Color(0xFF262D34);

  static const Color customColor1 = Color(0xFF57636C);
  static const Color customColor2 = Color(0xFFDBE2E7);
  static const Color customColor3 = Color(0xFF0080FF);
  static const Color customColor4 = Color(0xFF090F13);
  static const Color customColor5 = Color(0xFFEEEEEE);
  static const Color richBlackFOGRA39 = Color(0xFF070707);
  static const Color blue = Color(0xFF3A28DE);
  static const Color turquoise = Color(0xFF34D1BF);
  static const Color cultured = Color(0xFFEFEFEF);
  static const Color cerise = Color(0xFFD1345B);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';
  static TextStyle get title1 => GoogleFonts.getFont(
        'Poppins',
        color: customColor4,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF757575),
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF616161),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF424242),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
