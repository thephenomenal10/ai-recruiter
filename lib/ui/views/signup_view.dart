import 'package:ai_recruiter/core/services/api.dart';
import 'package:ai_recruiter/ui/shared/app_colors.dart';
import 'package:ai_recruiter/ui/shared/text_styles.dart';
import 'package:ai_recruiter/ui/shared/ui_helper.dart';
import 'package:ai_recruiter/ui/views/home_view.dart';
import 'package:ai_recruiter/ui/views/signin_view.dart';
import 'package:ai_recruiter/ui/widgets/show_dialog_widget.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  Api _api = locator<Api>();

  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  String _email, _name, _password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create Account",
                style: TextStyleHelper().mediumHeadingStyle,
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: inputDecoration("NAME"),
                          key: ValueKey("name"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your name";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            _name = value;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: inputDecoration("Email"),
                          keyboardType: TextInputType.emailAddress,
                          key: ValueKey("email"),
                          validator: (value) {
                            if (value.isEmpty || !value.contains("@")) {
                              return "Please enter a valid email address";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            _email = value;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: inputDecoration("PASSWORD"),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty || value.length < 6) {
                              return "Password must be atleast 6 character";
                            } else {
                              return null;
                            }
                          },
                          key: ValueKey("password"),
                          onSaved: (value) {
                            _password = value;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        loading
                            ? Center(
                                child: CircularProgressIndicator(
                                backgroundColor: primaryColor,
                              ))
                            : Container(
                                width: MediaQuery.of(context).size.width,
                                child: RaisedButton(
                                  color: primaryColor,
                                  onPressed: _submit,
                                  child: Text(
                                    "CREATE",
                                    style: TextStyleHelper().buttonTextStyle,
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                            splashColor: primaryColor,
                            colorBrightness: Brightness.dark,
                            hoverColor: primaryColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SigninView()));
                            },
                            child: Text(
                              "I have account",
                              style: TextStyleHelper().smallHeadingStyle,
                            )),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() async {
    setState(() {
      loading = true;
    });
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState.save();
      print(_name.toString());
      print(_email.toString());
      print(_password.toString());
      await _api
          .register(_name.toString(), _email.toString(), _password.toString())
          .then((value) => {
                print(value),
                if (value != 200)
                  {
                    showMyDialog(context, 'Email id is already registered'),
                    print(
                        "ERROR ERROR ERROR ERROR ERROR ERROR ERROR ERROR ERROR"),
                    setState(() {
                      loading = false;
                    }),
                    _formKey.currentState.reset(),
                  }
                else
                  {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeView())),
                    print(
                        "_______________________Signup successfully_____________________________"),
                  },
                setState(() {
                  loading = false;
                }),
                _formKey.currentState.dispose(),
              });
    }
  }
}
