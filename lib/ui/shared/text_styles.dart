import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class TextStyleHelper {
  TextStyle normalHeadingStyle = GoogleFonts.nunitoSans(
    color: primaryColor,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    fontSize: 25,
  );

  TextStyle mediumHeadingStyle = GoogleFonts.nunitoSans(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    fontSize: 30,
  );
  TextStyle buttonTextStyle = GoogleFonts.nunitoSans(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    fontSize: 22,
  );

  TextStyle smallHeadingStyle = GoogleFonts.nunitoSans(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    fontSize: 15,
  );
}
