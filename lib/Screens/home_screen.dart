import 'package:flutter/material.dart';
import 'package:ta3alam_imrah/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: KMaincolor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          height: 20,
          color: Colors.orange,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
      ),
    );
  }
}
