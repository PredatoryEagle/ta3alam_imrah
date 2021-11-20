import 'package:flutter/material.dart';
import 'package:ta3alam_imrah/constants/constants.dart';
import 'package:ta3alam_imrah/Widgets/polygonwidget.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);
  // String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMaincolor,
      body: Container(
        color: KMaincolor,
        child: Column(
          children: [
            Container(
              color: KMaincolor,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Image(
                      image: AssetImage(
                        'lib/Images/Polygon.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 80, 0, 0),
                    child: Text(
                      'اللغة العرببة',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Image(
                      image: AssetImage(
                        'lib/Images/Polygon.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 80, 0, 0),
                    child: Text(
                      'اللغة العرببة',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
