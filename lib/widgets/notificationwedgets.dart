import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    required this.images,
    required this.titletext,
    Key? key,
  }) : super(key: key);
  final String images;
  final String titletext;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage(images),
      ),
      title: Text(
        titletext,
        style: GoogleFonts.roboto(
            color: Color(0xff1C2760),
            fontSize: 14,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
