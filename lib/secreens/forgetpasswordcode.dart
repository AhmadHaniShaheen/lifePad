import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordCodeScreenRa extends StatefulWidget {
  const ForgetPasswordCodeScreenRa({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordCodeScreenRa> createState() =>
      _ForgetPasswordCodeScreenRaState();
}

class _ForgetPasswordCodeScreenRaState
    extends State<ForgetPasswordCodeScreenRa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: Color(0xff9098B1),
            )),
        title: Text('Forgot Password',
            style: GoogleFonts.poppins(
                fontSize: 16,
                color: Color(0xff223263),
                fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Column(
            children: [
              Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Check your email address and enter',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff9098B1),
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(' the code',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff9098B1),
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      width: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text('Enter the Code',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Color(0xff223263),
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          width: 50,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              TextField(
                                cursorColor: Color(0xff09C2B5),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(

                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE5E5E5),
                                        width: 1,
                                      )),
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                                  labelStyle: TextStyle(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5,
                                    height: 21.6,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffE5E5E5),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          width: 50,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              TextField(
                                cursorColor: Color(0xff09C2B5),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE5E5E5),
                                        width: 1,
                                      )),
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                                  labelStyle: TextStyle(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5,
                                    height: 21.6,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffE5E5E5),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          width: 50,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              TextField(
                                cursorColor: Color(0xff09C2B5),

                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE5E5E5),
                                        width: 1,
                                      )),
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                                  labelStyle: TextStyle(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5,
                                    height: 21.6,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffE5E5E5),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          width: 50,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              TextField(
                                cursorColor: Color(0xff09C2B5),

                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE5E5E5),
                                        width: 1,
                                      )),
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                                  labelStyle: TextStyle(
                                    color: Color(0xff9098B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5,
                                    height: 21.6,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffE5E5E5),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/resetpassword');
                      },
                      child: Text(
                        'Reset password',
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
