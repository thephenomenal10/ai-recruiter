import 'package:ai_recruiter/ui/shared/app_colors.dart';
import 'package:ai_recruiter/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String labelText;
  final bool obsecureText;

  const TextWidget({Key key, this.labelText, this.obsecureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyleHelper().smallHeadingStyle,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.0),
            borderSide: new BorderSide(color: primaryColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: new BorderSide(color: primaryColor)),
      ),
      obscureText: obsecureText,
     
    );
  }
}
