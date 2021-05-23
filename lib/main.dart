import 'package:ai_recruiter/core/services/auth.dart';
import 'package:ai_recruiter/ui/shared/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'AI Recruiter',
          home: Auth(),
        );
      });
    });
  }
}
