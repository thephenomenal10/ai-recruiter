import 'package:ai_recruiter/ui/shared/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Job extends StatelessWidget {
  final String profile;
  final String company;
  final String postedOn;

  const Job({Key key, this.profile, this.company, this.postedOn})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23 * SizeConfig.heightMultiplier,
      width: 65 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/google.png",
                      height: 5 * SizeConfig.imageSizeMultiplier,
                      width: 5 * SizeConfig.imageSizeMultiplier,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 6 * SizeConfig.imageSizeMultiplier,
                )
              ],
            ),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            Text(
              company,
              style: GoogleFonts.nunitoSans(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  fontSize: 1.7 * SizeConfig.textMultiplier),
            ),
            SizedBox(
              height: 0.5 * SizeConfig.heightMultiplier,
            ),
            Text(
              profile,
              style: GoogleFonts.nunitoSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  fontSize: 1.7 * SizeConfig.textMultiplier),
            ),
            SizedBox(
              height: 0.5 * SizeConfig.heightMultiplier,
            ),
            Text(
              postedOn,
              style: GoogleFonts.nunitoSans(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  fontSize: 1.7 * SizeConfig.textMultiplier),
            ),
            Text(
              "India",
              style: GoogleFonts.nunitoSans(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  fontSize: 1.7 * SizeConfig.textMultiplier),
            ),
          ],
        ),
      ),
    );
  }
}
