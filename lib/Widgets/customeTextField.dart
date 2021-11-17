import 'package:flutter/material.dart';



class CustomeTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  const CustomeTextField({
    Key? key, required this.hint, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
        ),
        filled: true,
        fillColor: Colors.yellow,
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
