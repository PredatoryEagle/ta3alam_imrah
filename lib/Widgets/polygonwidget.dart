import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Polygon extends StatelessWidget {
  final String title;
  const Polygon({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'lib/Images/Polygon.png',
      ),
      Text(title,
          style: TextStyle(
              fontFamily: GoogleFonts.cairo().fontFamily, fontSize: 35))
    ]);
  }
}
