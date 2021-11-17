import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta3alam_imrah/Screens/signup_screen.dart';
import 'package:ta3alam_imrah/Widgets/customeTextField.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Container(
              height: heightScreen,
              width: widthScreen,
              child: Column(
                children: [
                  Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(
                      'lib/Images/distance-education.png',
                    ),
                  ),
                  SizedBox(
                    height: 5.5,
                  ),
                  Text(
                    'تعــلــم وامــرح ',
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      backgroundColor: Colors.lightBlue,
                      fontSize: 40.0,
                      fontFamily: GoogleFonts.amiri().fontFamily,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: widthScreen,
                      child: Text(
                        'Email :',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: CustomeTextField(
                      hint: 'example@gmail.com',
                      icon: Icons.email,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: widthScreen,
                      child: Text(
                        'Password :',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: CustomeTextField(
                      hint: '********',
                      icon: Icons.lock,
                    ),
                  ),
                  SizedBox(
                    height: heightScreen * 0.03,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.yellow,
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Don\'t have an account ?',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            SignUpScreen.id,
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.lightBlue,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    '--------------Or with--------------',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(
                          'lib/Images/Facebook.png',
                        ),
                      ),
                      Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(
                          'lib/Images/GooGle.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
