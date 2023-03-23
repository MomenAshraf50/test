import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    Key? key,
    required this.title,
    this.align,
    this.color,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);
  final String title;
  final TextAlign? align;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color?? Colors.grey,
      ),
    );
  }

}
