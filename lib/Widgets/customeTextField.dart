import 'package:flutter/material.dart';
import 'package:ta3alam_imrah/constants/constants.dart';

class CustomeTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isArabic;
  CustomeTextField({
    Key? key,
    required this.hint,
    required this.icon,
    required this.isArabic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      decoration: InputDecoration(
        hintTextDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
        prefixIcon: Icon(
          icon,
        ),
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
