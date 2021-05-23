import 'package:ai_recruiter/ui/shared/text_styles.dart';
import 'package:ai_recruiter/ui/views/signin_view.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog(BuildContext context, String content) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Error', style: TextStyleHelper().normalHeadingStyle),
        content: SingleChildScrollView(
          child: ListBody(
            children:  <Widget>[
              Text(content),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SigninView()));
            },
          ),
        ],
      );
    },
  );
}
