import 'package:flutter/material.dart';
class SelectorIndent extends StatelessWidget {
  const SelectorIndent({
    required this.selector,
    Key? key,
  }) : super(key: key);
  final bool selector;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: selector? Color(0xff09C2B5):Color(0xffE5E5E5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
