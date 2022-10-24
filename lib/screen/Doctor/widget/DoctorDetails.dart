// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../../app/color.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        TypeText(
          title: "Doctor Name",
        ),

        ValueText(
          value: "Dr. Ying",
        ),
        SizedBox(
          height: 10,
        ),
        TypeText(
          title: "Specialist",
        ),

        ValueText(
          value: "Specialist in Emergency Treatment",
        ),
         SizedBox(
          height: 10,
        ),
         TypeText(
          title: "Specialist",
        ),

        ValueText(
          value: "Specialist in Emergency Treatment",
        ),
        SizedBox(
          height: 10,
        ),
         TypeText(
          title: "Specialist",
        ),

        ValueText(
          value: "Specialist in Emergency Treatment",
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class ValueText extends StatelessWidget {
  final String _value;
  const ValueText({value}) : _value = value;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$_value",
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontFamily: "Pop", fontSize: 18.0, fontWeight: FontWeight.w500),
    );
  }
}

class TypeText extends StatelessWidget {
  final String _title;
  const TypeText({title}) : _title = title;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$_title",
      style: TextStyle(fontSize: 12.0, fontFamily: "Pop", color: Colors.grey),
    );
  }
}
