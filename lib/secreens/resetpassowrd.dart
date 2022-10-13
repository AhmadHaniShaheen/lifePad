import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreenRa extends StatefulWidget {
  const ResetPasswordScreenRa({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreenRa> createState() => _ResetPasswordScreenRaState();
}

class _ResetPasswordScreenRaState extends State<ResetPasswordScreenRa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              color: Color(0xff9098B1),
            )),
        title: Text('Reset Password',
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
                  child: Text('Please sign up to enter in a app. ',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xff9098B1),
                          fontWeight: FontWeight.w400)),
                ),
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
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          color: Color(0xff9098B1),
                        ),
                        hintText: 'New Password',
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
                    SizedBox(height: 24,),
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
                        errorStyle: GoogleFonts.roboto(
                          color: Color(0xffFB7181),
                          fontSize: 12,
                          letterSpacing: .5,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          color: Color(0xff9098B1),
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: GoogleFonts.roboto(
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
                height: 42,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text(
                    'Update Password',
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
        ),
      ),
    );
  }
}
