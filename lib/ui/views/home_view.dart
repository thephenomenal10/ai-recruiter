import 'package:ai_recruiter/ui/shared/SizeConfig.dart';
import 'package:ai_recruiter/ui/views/signin_view.dart';
import 'package:ai_recruiter/ui/widgets/jobs_widget.dart';
import 'package:ai_recruiter/ui/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 7 * SizeConfig.heightMultiplier,
                  left: 5 * SizeConfig.widthMultiplier),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 6 * SizeConfig.imageSizeMultiplier,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: 2 * SizeConfig.heightMultiplier,
                    left: 5 * SizeConfig.widthMultiplier),
                child: Text(
                  "Hi Sahyog, Find your\nDream Job",
                  style: GoogleFonts.nunitoSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      fontSize: 3.5 * SizeConfig.textMultiplier),
                )),
            Search(),
            RaisedButton(onPressed: _logout, child: new Text("Logout")),
            Padding(
              padding: EdgeInsets.only(
                  top: 2 * SizeConfig.heightMultiplier,
                  left: 5 * SizeConfig.widthMultiplier),
              child: Row(
                children: [
                  _category("Product"),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  _category("Design"),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  _category("Google"),
                ],
              ),
            ),
            SizedBox(
              height: 7 * SizeConfig.heightMultiplier,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier,
                    vertical: 2 * SizeConfig.heightMultiplier),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Popular Job",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                              fontSize: 2.4 * SizeConfig.textMultiplier),
                        ),
                        Spacer(),
                        Text(
                          "show All",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              fontSize: 1.8 * SizeConfig.textMultiplier),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4 * SizeConfig.heightMultiplier,
                    ),
                    Jobs(),
                    SizedBox(
                      height: 4 * SizeConfig.heightMultiplier,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 5 * SizeConfig.widthMultiplier),
              child: Row(
                children: [
                  Text(
                    "Job Category",
                    style: GoogleFonts.nunitoSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 2.4 * SizeConfig.textMultiplier),
                  ),
                  Spacer(),
                  Text(
                    "show All",
                    style: GoogleFonts.nunitoSans(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 1.8 * SizeConfig.textMultiplier),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5 * SizeConfig.widthMultiplier),
              child: Container(
                height: 7 * SizeConfig.heightMultiplier,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _jobCategory("Design\nJob", Colors.blue[50], Colors.blue),
                    SizedBox(
                      width: 3 * SizeConfig.widthMultiplier,
                    ),
                    _jobCategory("Development", Colors.red[50], Colors.red),
                    SizedBox(
                      width: 3 * SizeConfig.widthMultiplier,
                    ),
                    _jobCategory("Sales", Colors.orange[50], Colors.orange),
                    SizedBox(
                      width: 3 * SizeConfig.widthMultiplier,
                    ),
                    _jobCategory("Marketing", Colors.purple[50], Colors.purple),
                    SizedBox(
                      width: 3 * SizeConfig.widthMultiplier,
                    ),
                    _jobCategory("Engineer", Colors.teal[50], Colors.teal),
                    SizedBox(
                      width: 5 * SizeConfig.widthMultiplier,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
          ],
        ),
      ),
    );
  }

  void _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("auth", false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SigninView()));
  }

  _category(String category) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          category,
          style: GoogleFonts.nunitoSans(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              fontSize: 1.6 * SizeConfig.textMultiplier),
        ),
      ),
    );
  }

  _jobCategory(String category, Color color1, Color color2) {
    return Container(
      decoration: BoxDecoration(
          color: color1, borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 3 * SizeConfig.widthMultiplier),
        child: Center(
          child: Text(
            category,
            style: GoogleFonts.nunitoSans(
                color: color2,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                fontSize: 2 * SizeConfig.textMultiplier),
          ),
        ),
      ),
    );
  }
}
