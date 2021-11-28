import 'package:flutter/material.dart';
import 'package:ta3alam_imrah/Screens/home_screen_2.dart';
import 'package:ta3alam_imrah/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen1 extends StatelessWidget {
  static String id = 'HomeScreen1';
  const HomeScreen1({Key? key}) : super(key: key);
  // String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        toolbarHeight: 70,
        title: Text("اختر اللغة التي تريد تعلمها",
            style: TextStyle(
                fontFamily: GoogleFonts.cairo().fontFamily, fontSize: 30)),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      backgroundColor: KMaincolor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(HomeScreen2.id);
                  },
                  child: Polygone(
                    title: 'اللغة العربية',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(HomeScreen2.id);
                  },
                  child: Polygone(
                    title: 'اللغة الإنجليزية',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Polygone extends StatelessWidget {
  final String title;
  const Polygone({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PolygoneShape(),
      child: Container(
        color: Colors.amber,
        width: 214,
        height: 214,
        child: Center(
          child: Text(title,
              style: TextStyle(
                  fontFamily: GoogleFonts.cairo().fontFamily, fontSize: 30)),
        ),
      ),
    );
  }
}

class PolygoneShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4175824, size.height * 0.02307054);
    path_0.cubicTo(
        size.width * 0.4685824,
        size.height * -0.003459069,
        size.width * 0.5314176,
        size.height * -0.003459064,
        size.width * 0.5824176,
        size.height * 0.02307054);
    path_0.lineTo(size.width * 0.9172143, size.height * 0.1972262);
    path_0.cubicTo(
        size.width * 0.9682143,
        size.height * 0.2237559,
        size.width * 0.9996319,
        size.height * 0.2727847,
        size.width * 0.9996319,
        size.height * 0.3258441);
    path_0.lineTo(size.width * 0.9996319, size.height * 0.6741535);
    path_0.cubicTo(
        size.width * 0.9996319,
        size.height * 0.7272129,
        size.width * 0.9682143,
        size.height * 0.7762426,
        size.width * 0.9172143,
        size.height * 0.8027723);
    path_0.lineTo(size.width * 0.5824176, size.height * 0.9769307);
    path_0.cubicTo(
        size.width * 0.5314176,
        size.height * 1.003460,
        size.width * 0.4685824,
        size.height * 1.003460,
        size.width * 0.4175824,
        size.height * 0.9769307);
    path_0.lineTo(size.width * 0.08278736, size.height * 0.8027723);
    path_0.cubicTo(
        size.width * 0.03178736,
        size.height * 0.7762426,
        size.width * 0.0003699418,
        size.height * 0.7272129,
        size.width * 0.0003699418,
        size.height * 0.6741535);
    path_0.lineTo(size.width * 0.0003699418, size.height * 0.3258441);
    path_0.cubicTo(
        size.width * 0.0003699418,
        size.height * 0.2727847,
        size.width * 0.03178736,
        size.height * 0.2237559,
        size.width * 0.08278736,
        size.height * 0.1972262);
    path_0.lineTo(size.width * 0.4175824, size.height * 0.02307054);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
