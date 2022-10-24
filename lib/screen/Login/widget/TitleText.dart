import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  
  final String _title;
  final double _size;
  TitleText({title,size}): _title = title, _size = size;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${_title}",
      style: TextStyle(fontSize: _size, fontWeight: FontWeight.w200, fontFamily: "Lobster"),
    );
  }
}