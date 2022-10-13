import 'dart:ui';

import 'package:flutter/material.dart';
class SplachSec extends StatefulWidget {
  const SplachSec({Key? key}) : super(key: key);

  @override
  State<SplachSec> createState() => _SplachSecState();
}

class _SplachSecState extends State<SplachSec> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/onbording');
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7F5F4),
      body: Container(
        child: Center(child: Image(image: AssetImage('images/LifePad.png'))),
      ),

    );
  }
}
