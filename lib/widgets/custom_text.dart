import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomText(
      {Key key,
      @required this.text,
      this.textColor,
      this.fontWeight,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.signika(
          color: textColor, fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
