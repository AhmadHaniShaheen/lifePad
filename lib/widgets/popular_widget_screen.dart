import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularHabitWidget extends StatelessWidget {
  const PopularHabitWidget({
    required this.numbertext,
    required this.titletext,
    required this.subtitletext,
    required this.iconsdata,
    Key? key,
  }) : super(key: key);
  final String numbertext;
  final String titletext;
  final String subtitletext;
  final IconData iconsdata;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          numbertext,
          style: GoogleFonts.roboto(
              color: Color(0xff1C2760),
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        title: Text(
          titletext,
          style: GoogleFonts.roboto(
              color: Color(0xff1C2760),
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          subtitletext,
          style: GoogleFonts.roboto(
              color: Color(0xff9098B1),
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            iconsdata,
            color: Color(0xff1C2760),
            size: 36,
          ),
        ));
  }
}
