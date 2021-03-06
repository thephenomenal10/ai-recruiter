import 'package:ai_recruiter/ui/shared/SizeConfig.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 4 * SizeConfig.heightMultiplier,
        left: 5 * SizeConfig.widthMultiplier,
        right: 5 * SizeConfig.widthMultiplier,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 3 * SizeConfig.widthMultiplier,
                    vertical: 2 * SizeConfig.heightMultiplier),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 5 * SizeConfig.imageSizeMultiplier,
                    ),
                    SizedBox(
                      width: 1.5 * SizeConfig.widthMultiplier,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: search,
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.blue,
                        style: GoogleFonts.nunitoSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 1.6 * SizeConfig.textMultiplier),
                        decoration: InputDecoration.collapsed(
                            hintText: "Search",
                            hintStyle: TextStyle(
                                fontSize: 1.7 * SizeConfig.textMultiplier,
                                color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2 * SizeConfig.widthMultiplier,
          ),
          Container(
            width: 12.5 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.blue.withOpacity(0.05)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.sort,
                color: Colors.black,
                size: 6 * SizeConfig.imageSizeMultiplier,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
