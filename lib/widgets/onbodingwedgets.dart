import 'package:flutter/material.dart';
class OnbordingWedget extends StatelessWidget {
  const OnbordingWedget({
    required this.ImageBording,
    required this.Title,
    required this.description,
    Key? key,
  }) : super(key: key);
  final String ImageBording;
  final String Title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(image: AssetImage(ImageBording)),
        SizedBox(
          height: 16,
        ),
        Text(
          Title,
          style: TextStyle(
              fontSize: 28,
              color: Color(0xff1C2760),
              fontWeight: FontWeight.w700,
              letterSpacing: .2
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff9098B1),
                fontWeight: FontWeight.w400,
                letterSpacing: .3,

              ),
            )),
      ],
    );
  }
}
