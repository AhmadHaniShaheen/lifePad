import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/widgets/notificationwedgets.dart';

class NotificationSecreen extends StatefulWidget {
  const NotificationSecreen({Key? key}) : super(key: key);

  @override
  State<NotificationSecreen> createState() => _NotificationSecreenState();
}

class _NotificationSecreenState extends State<NotificationSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff000000),
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Notification',
          style: GoogleFonts.roboto(
              color: Color(0xff1C2760),
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 24,
          ),
          NotificationWidget(
              images: 'images/book2.png',
              titletext: 'Mission  go for shopining added successfully'),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          NotificationWidget(
              images: 'images/book2.png',
              titletext:
              'Mission  Prepare for English class added successfully'),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          NotificationWidget(
              images: 'images/book2.png',
              titletext: 'Mission  sport  added successfully'),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          NotificationWidget(
              images: 'images/book2.png',
              titletext: 'Mission  Prepare for Sport class added successfully'),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xffE5E5E5),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
