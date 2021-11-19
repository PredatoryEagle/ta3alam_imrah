import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta3alam_imrah/Screens/signup_screen.dart';
import 'package:ta3alam_imrah/Widgets/customeTextField.dart';
import 'package:ta3alam_imrah/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KMaincolor,
      body: SingleChildScrollView(
        child: Container(
          height: heightScreen,
          width: widthScreen,
          child: ListView(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Image(
                        height: 200,
                        width: 200,
                        image: AssetImage(
                          'lib/Images/logo_ta3alamwamra7.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28.0),
                        child: Container(
                          alignment: Alignment.topRight,
                          width: widthScreen,
                          child: Text(
                            ': البريد الإلكتروني',
                            style: TextStyle(
                              color: KButtoncolor,
                              fontSize: 20.0,
                              fontFamily: GoogleFonts.cairo().fontFamily,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: CustomeTextField(
                          hint: 'ادخل بريدك الإلكتروني',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          alignment: Alignment.topRight,
                          width: widthScreen,
                          child: Text(
                            ': كلمة المرور',
                            style: TextStyle(
                              color: KButtoncolor,
                              fontSize: 20.0,
                              fontFamily: GoogleFonts.cairo().fontFamily,
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
                          hint: 'ادخل كلمة المرور',
                        ),
                      ),
                      SizedBox(
                        height: heightScreen * 0.03,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontFamily: GoogleFonts.cairo().fontFamily,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: KButtoncolor,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                SignUpScreen.id,
                              );
                            },
                            child: Text(
                              'أنشئ حساب جديد',
                              style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.cairo().fontFamily,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'لا تمتلك حساب ؟',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoogleFonts.cairo().fontFamily,
                              ),
                            ),
                          ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
