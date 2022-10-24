// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../../app/color.dart';

class MedicalDetails extends StatelessWidget {
  const MedicalDetails({
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
          title: "Patient Name",
        ),

        ValueText(
          value: "Xiao Ying Kong",
        ),
        SizedBox(
          height: 10,
        ),
        TypeText(
          title: "Disease",
        ),

        ValueText(
          value: "Cold and Flu",
        ),
        SizedBox(
          height: 10,
        ),
        TypeText(
          title: "Symptom(s)",
        ),

        ValueText(
          value: "Fever, Pain & Fatigue",
        ),
        SizedBox(
          height: 10,
        ),
        TypeText(
          title: "Prescriptions",
        ),

        ValueText(
          value: "Aspirin (Pain Killer)",
        ),
        SizedBox(
          height: 10,
        ),
        TypeText(
          title: "Appointed Doctor",
        ),

        ValueText(
          value: "Dr. Ying",
        ),
        SizedBox(
          height: 10,
        ),
        TypeText(
          title: "Doctor's Comment",
        ),

        ValueText(
          value:
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
        ),
        SizedBox(
          height: 10.0,
        ),
        TypeText(
          title: "Last Appoinment",
        ),

        ValueText(
          value: "📆 20 Oct 2022   🕙 10:00",
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
