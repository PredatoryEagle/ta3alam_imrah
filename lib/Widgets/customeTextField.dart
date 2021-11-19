import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta3alam_imrah/constants/constants.dart';

class CustomeTextField extends StatelessWidget {
  final String hint;
  CustomeTextField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontFamily: GoogleFonts.cairo().fontFamily,
        ),
        hintTextDirection: TextDirection.rtl,
        filled: true,
        fillColor: KTextFieldcolor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        hintText: hint,
      ),
    );
  }
}
