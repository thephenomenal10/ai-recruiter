import 'package:ai_recruiter/ui/views/home_view.dart';
import 'package:ai_recruiter/ui/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool auth = false;
  Future<bool> getAuthState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      bool authId = false;
      authId = prefs.getBool("auth");
      if (authId == null) authId = false;
      auth = authId;
    });
    return auth;
  }

  @override
  void initState() {
    super.initState();
    getAuthState();
  }

  @override
  Widget build(BuildContext context) {
    return auth ? HomeView() : SigninView();
  }
}
