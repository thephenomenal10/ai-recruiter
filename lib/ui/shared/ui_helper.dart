import 'package:ai_recruiter/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

InputDecoration inputDecoration(String label) {
  InputDecoration inputDecoration = InputDecoration(
    labelText: label,
    labelStyle: TextStyleHelper().smallHeadingStyle,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2.0),
        borderSide: new BorderSide(color: primaryColor)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: new BorderSide(color: primaryColor)),
  );
  return inputDecoration;
}
