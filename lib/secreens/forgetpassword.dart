import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreenRa extends StatefulWidget {
  const ForgetPasswordScreenRa({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreenRa> createState() => _ForgetPasswordScreenRaState();
}

class _ForgetPasswordScreenRaState extends State<ForgetPasswordScreenRa> {
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
                  child: Text('Enter your email address for send ',
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
                  child: Text('code',
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
                        errorStyle: GoogleFonts.roboto(
                          color: Color(0xffFB7181),
                          fontSize: 12,
                          letterSpacing: .5,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Color(0xff9098B1),
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
                  ],
                ),
              ),
              SizedBox(
                height: 42,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgetpassordcode');
                  },
                  child: Text(
                    'Send Code',
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
