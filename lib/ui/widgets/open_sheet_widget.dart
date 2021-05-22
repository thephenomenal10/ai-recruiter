import 'package:ai_recruiter/ui/shared/SizeConfig.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void openBottomSheet(
    {BuildContext context,
    String company,
    String profile,
    String description}) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) {
        return Container(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(top: 25 * SizeConfig.heightMultiplier),
            child: Container(
              height: 90 * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 3 * SizeConfig.heightMultiplier,
                        horizontal: 4 * SizeConfig.widthMultiplier),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 5 * SizeConfig.imageSizeMultiplier,
                          ),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Spacer(),
                        Icon(
                          Icons.file_upload,
                          color: Colors.black,
                          size: 6 * SizeConfig.imageSizeMultiplier,
                        ),
                      ],
                    ),
                  ),
                  // Center(
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.blue.withOpacity(0.05),
                  //         borderRadius: BorderRadius.circular(20.0)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(40.0),
                  //       child: Image.asset(
                  //         "assets/google.png",
                  //         height: 5 * SizeConfig.imageSizeMultiplier,
                  //         width: 5 * SizeConfig.imageSizeMultiplier,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Center(
                    child: Text(
                      profile,
                      style: GoogleFonts.nunitoSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 4 * SizeConfig.textMultiplier),
                    ),
                  ),
                  SizedBox(
                    height: 1 * SizeConfig.heightMultiplier,
                  ),
                  Center(
                    child: Text(
                      company,
                      style: GoogleFonts.nunitoSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 1.7 * SizeConfig.textMultiplier),
                    ),
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 7 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3 * SizeConfig.widthMultiplier),
                          child: Center(
                            child: Text(
                              "Description",
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  fontSize: 2 * SizeConfig.textMultiplier),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 7 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3 * SizeConfig.widthMultiplier),
                          child: Center(
                            child: Text(
                              "Company",
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  fontSize: 2 * SizeConfig.textMultiplier),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 7 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3 * SizeConfig.widthMultiplier),
                          child: Center(
                            child: Text(
                              "Reviews",
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  fontSize: 2 * SizeConfig.textMultiplier),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 4 * SizeConfig.widthMultiplier),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              fontSize: 2 * SizeConfig.textMultiplier),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        Column(textDirection: TextDirection.ltr, children: [
                          SizedBox(
                            width: 2 * SizeConfig.widthMultiplier,
                          ),
                          Text(
                            description,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunitoSans(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                                fontSize: 1.7 * SizeConfig.textMultiplier),
                          ),
                        ]),
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 10 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(-3, -3),
                          blurRadius: 10.0)
                    ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4 * SizeConfig.widthMultiplier),
                      child: Row(
                        children: [
                          Container(
                            height: 7.5 * SizeConfig.heightMultiplier,
                            width: 15 * SizeConfig.widthMultiplier,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.greenAccent, width: 3.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.greenAccent,
                                size: 7 * SizeConfig.imageSizeMultiplier,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2 * SizeConfig.widthMultiplier,
                          ),
                          Expanded(
                            child: Container(
                              height: 7.5 * SizeConfig.heightMultiplier,
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                child: Text(
                                  "Apply Here",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      fontSize: 2 * SizeConfig.textMultiplier),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
