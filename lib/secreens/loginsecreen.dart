import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:username_validator/username_validator.dart';

class LoginScreenRa extends StatefulWidget {
  const LoginScreenRa({Key? key}) : super(key: key);

  @override
  State<LoginScreenRa> createState() => _LoginScreenRaState();
}

class _LoginScreenRaState extends State<LoginScreenRa> {
  late TapGestureRecognizer _tapGestureRecognizer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = NavigatorSignInSecreen;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer = TapGestureRecognizer();
  }

  void NavigatorSignInSecreen() {
    Navigator.pushNamed(context, '/signup');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Image(
                image: AssetImage('images/loginback.png'),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 85,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome to LifePad',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1C2760),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: Column(
                      children: [
                        Text(
                          'sign in to continue',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff9098B1),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value != null &&
                                      value.isNotEmpty &&
                                      !EmailValidator.validate(value)) {
                                    return 'Enter a valid email';
                                  }
                                },
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Color(0xff09C2B5),
                                cursorRadius: Radius.circular(5),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  errorStyle: GoogleFonts.poppins(
                                    color: Color(0xffFB7181),
                                    fontSize: 12,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.mail_outline,
                                    color: Color(0xffE5E5E5),
                                  ),
                                  hintText: 'Your Email',
                                  hintStyle: GoogleFonts.poppins(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color(0xff09C2B5),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color(0xffE5E5E5),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 28),
                              TextFormField(
                                validator: (value) {
                                  if (value != null &&
                                      value.isNotEmpty &&
                                      value.length < 4) {
                                    return ' Oops! Your Password not Correct ';
                                  }
                                },
                                keyboardType: TextInputType.text,

                                obscureText: true,
                                cursorColor: Color(0xff09C2B5),
                                cursorRadius: Radius.circular(5),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  errorStyle: GoogleFonts.poppins(
                                    color: Color(0xffFB7181),
                                    fontSize: 12,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Color(0xffE5E5E5),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock_outlined,
                                    color: Color(0xffE5E5E5),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.poppins(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color(0xff09C2B5),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color(0xffE5E5E5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/forgetpassord');
                              },
                              child: Text(
                                'Forget Password?',
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Color(0xff9098B1),
                                    fontWeight: FontWeight.w400),
                              ),
                            )),
                        SizedBox(
                          height: 32,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            child: Text(
                              'Login',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w700),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff09C2B5),
                              minimumSize: Size(double.infinity, 57),
                              elevation: 0,
                              shadowColor: Color(0xff40BFFF3D),
                            )),
                        SizedBox(
                          height: 16,
                        ),
                        RichText(
                            text: TextSpan(
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  letterSpacing: .5,
                                  color: Color(0xff9098B1),
                                ),
                                text: 'Don\'t have an account? ',
                                children: [
                                  TextSpan(
                                    recognizer: _tapGestureRecognizer,
                                    text: ' Sign up',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      letterSpacing: .5,
                                      color: Color(0xff09C2B5),
                                    ),
                                  )
                                ])),
                        SizedBox(height: 21),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  indent: 5.0,
                                  endIndent: 10.0,
                                  thickness: 1,
                                  color: Color(0xff9098B1),
                                ),
                              ),
                              Text(
                                "Login With",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Color(0xff717682),
                                    fontWeight: FontWeight.w400),
                              ),
                              Expanded(
                                child: Divider(
                                  indent: 10.0,
                                  endIndent: 5.0,
                                  thickness: 1,
                                  color: Color(0xff9098B1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffffffff), elevation: 0),
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xffFfffff),
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Color(0xff09C2B5),
                                  ),
                                )),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffffffff), elevation: 0),
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xffFfffff),
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.google,
                                    color: Color(0xff09C2B5),
                                  ),
                                )),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffffffff), elevation: 0),
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xffFfffff),
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.twitter,
                                    color: Color(0xff09C2B5),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
